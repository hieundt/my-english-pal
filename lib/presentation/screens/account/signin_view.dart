import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/data/services/firebase/firebase_auth_methods.dart';
import 'package:myenglishpal_web/presentation/screens/account/background.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/footer.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/header.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_text_field.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/utils.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SignInView extends StatefulWidget {
  const SignInView({
    super.key,
  });

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final formKey = GlobalKey<FormState>();

  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> signInWithEmailPasword() async {
    try {
      await FirebaseAuthServices().signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      showSnackBar(
        context,
        e.message!,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AccountViewBackGround(
        child: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.COLUMN,
          children: [
            ResponsiveRowColumnItem(
              columnFlex: 3,
              child: AccountViewHeader(
                title: Text('Welcome!'),
                description: Text('Sign in to your account'),
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 2,
              child: AppButton(
                layout: AppButtonType.floatingActionButton,
                buttonLeading: Image.asset(
                  scale: 15,
                  UserViewImages.googleImage,
                ),
                buttonTitle: Text('Continue with Google'),
              ),
            ),
            const ResponsiveRowColumnItem(
              rowFlex: 1,
              child: SizedBox(
                width: 10,
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 2,
              child: AppButton(
                layout: AppButtonType.floatingActionButton,
                buttonLeading: Image.asset(
                  scale: 15,
                  UserViewImages.facebookImage,
                ),
                buttonTitle: Text('Continue with Facebook'),
              ),
            ),
            const ResponsiveRowColumnItem(
              columnFlex: 1,
              child: SizedBox(
                height: 20,
              ),
            ),
            ResponsiveRowColumnItem(
              columnFlex: 3,
              child: AppTextFormField(
                layout: AppTextFieldType.EMAIL,
                hintText: 'Enter your email here',
                controller: _emailController,
              ),
            ),
            const ResponsiveRowColumnItem(
              columnFlex: 1,
              child: SizedBox(
                height: 10,
              ),
            ),
            ResponsiveRowColumnItem(
              columnFlex: 3,
              child: AppTextFormField(
                layout: AppTextFieldType.PASSWORD,
                hintText: 'Enter your password here',
                controller: _passwordController,
              ),
            ),
            const ResponsiveRowColumnItem(
              columnFlex: 1,
              child: SizedBox(
                height: 15,
              ),
            ),
            ResponsiveRowColumnItem(
              columnFlex: 1,
              child: AppButton(
                layout: AppButtonType.textButton,
                buttonTitle: Text('Forgot password?'),
                //buttonTextColor: AppColors.darkBlueColor,
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    forgotPasswordRoute,
                    (route) => false,
                  );
                },
              ),
            ),
            ResponsiveRowColumnItem(
              columnFlex: 2,
              child: AppButton(
                layout: AppButtonType.floatingActionButton,
                buttonTitle: Text('Sign In'),
                onPressed: signInWithEmailPasword,
                //,
              ),
            ),
            const ResponsiveRowColumnItem(
              columnFlex: 1,
              child: SizedBox(
                height: 20,
              ),
            ),
            ResponsiveRowColumnItem(
              columnFlex: 1,
              child: AccountViewFooter(
                leading: Text("Don't have an account? "),
                trailing: AppButton(
                  layout: AppButtonType.textButton,
                  buttonTitle: Text('Create'),
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      signUpRoute,
                      (route) => false,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
