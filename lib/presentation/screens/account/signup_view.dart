import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/data/services/firebase/firebase_auth_methods.dart';
import 'package:myenglishpal_web/presentation/screens/account/background.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/footer.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/header.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_text_field.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
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
              columnFlex: 3,
              child: AccountViewHeader(
                title: Text(
                  'Hey!',
                  style: AppTextStyle.bungee50,
                ),
                description: Text(
                  'Let\'s create your account',
                  style: AppTextStyle.bungeeHairline30,
                ),
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: AppButton(
                layout: AppButtonType.floatingActionButton,
                buttonLeading: Image.asset(
                  scale: 15,
                  UserViewImages.googleImage,
                ),
                buttonTitle: Text(
                  'Continue with Google    ',
                  style: AppTextStyle.bungee15,
                ),
              ),
            ),
            const ResponsiveRowColumnItem(
              rowFlex: 1,
              child: SizedBox(
                height: 30,
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
                buttonTitle: Text(
                  'Continue with Facebook',
                  style: AppTextStyle.bungee15,
                ),
              ),
            ),
            const ResponsiveRowColumnItem(
              columnFlex: 1,
              child: SizedBox(
                height: 50,
              ),
            ),
            ResponsiveRowColumnItem(
              columnFlex: 1,
              child: AccountViewFooter(
                leading: Text(
                  "Already have an account? ",
                  style: AppTextStyle.robotoMono15,
                ),
                trailing: AppButton(
                  layout: AppButtonType.textButton,
                  buttonTitle: Text(
                    'Sign in',
                    style: AppTextStyle.robotoMono15.copyWith(
                      color: AppColors.darkBlueColor,
                    ),
                  ),
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
