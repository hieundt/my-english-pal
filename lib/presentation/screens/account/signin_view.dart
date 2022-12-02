import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/main.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/footer.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/header.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_text_field.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
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

  Future signIn() async {
    showDialog(
      context: context,
      builder: (context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              scale: 5,
              AppLogo.myEnglishPalLogo,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: const LinearProgressIndicator(
                minHeight: 5,
              ),
            ),
          ],
        ),
      ),
      barrierDismissible: false,
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      log(
        e.toString(),
      );
    }
    navigatorKey.currentState!.popUntil(
      (route) => route.isFirst,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AccountViewHeader(
            title: 'Welcome!',
            description: 'Sign in to your account',
          ),
          AppTextField(
            layout: AppTextFieldType.EMAIL,
            hintText: 'Enter your email here',
            controller: _emailController,
          ),
          AppTextField(
            layout: AppTextFieldType.PASSWORD,
            hintText: 'Enter your password here',
            controller: _passwordController,
          ),
          AppButton(
            layout: AppButtonType.TEXTBUTTON,
            buttonText: 'Forgot password?',
            onPressed: () {},
          ),
          AppButton(
            layout: AppButtonType.ELEVATEDBUTTON,
            buttonText: 'Sign In',
            onPressed: signIn,
          ),
          AccountViewFooter(
            description: "Don't have an account?",
            buttonText: 'Create',
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                registerRoute,
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
