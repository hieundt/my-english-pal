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
import 'package:responsive_framework/responsive_row_column.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({
    super.key,
  });

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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

  signUpWithEmailPasword() async {
    try {
      await FirebaseAuthServices().signUpWithEmailAndPassword(
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
              columnFlex: 9,
              child: AccountViewHeader(
                title: Text('Welcome!'),
                description: Text('Provide us your information'),
              ),
            ),
            ResponsiveRowColumnItem(
              columnFlex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButton(
                    layout: AppButtonType.floatingActionButton,
                    buttonLeading: Image.asset(
                      scale: 15,
                      UserViewImages.googleImage,
                    ),
                    buttonTitle: Text('Continue with Google'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  AppButton(
                    layout: AppButtonType.floatingActionButton,
                    buttonLeading: Image.asset(
                      scale: 15,
                      UserViewImages.facebookImage,
                    ),
                    buttonTitle: Text('Continue with Facebook'),
                  ),
                ],
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
              columnFlex: 2,
              child: AppButton(
                layout: AppButtonType.floatingActionButton,
                buttonTitle: Text('Sign Up'),
                onPressed: signUpWithEmailPasword,
                //signUpUser,
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
                leading: Text("Already have an account? "),
                trailing: AppButton(
                  layout: AppButtonType.textButton,
                  buttonTitle: Text('Sign In'),
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      signInRoute,
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
