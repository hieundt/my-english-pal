import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/main.dart';
import 'package:myenglishpal_web/presentation/screens/account/background.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/footer.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/header.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_text_form_field.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/utils.dart';

class RegisterView extends StatefulWidget {
  final VoidCallback onTapSignIn;
  const RegisterView({
    super.key,
    required this.onTapSignIn,
  });

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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

  Future register() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

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
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      log(
        e.toString(),
      );
      Utils.showSnackBar(
        e.message,
      );
    }
    navigatorKey.currentState!.popUntil(
      (route) => route.isFirst,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: AccountViewBackGround(
          child: ListView(
            children: [
              AccountViewHeader(
                title: 'Create your account',
                description: 'Please provide us your information below',
              ),
              AppTextFormField(
                layout: AppTextFieldType.EMAIL,
                hintText: 'Enter your email here',
                controller: _emailController,
              ),
              const SizedBox(
                height: 10,
              ),
              AppTextFormField(
                layout: AppTextFieldType.PASSWORD,
                hintText: 'Enter new password',
                controller: _passwordController,
              ),
              const SizedBox(
                height: 10,
              ),
              // AppTextFormField(
              //   layout: AppTextFieldType.PASSWORD,
              //   hintText: 'Enter password confirmation',
              // ),
              const SizedBox(
                height: 50,
              ),
              AppButton(
                layout: AppButtonType.ELEVATEDBUTTON,
                buttonText: 'Register',
                onPressed: register,
              ),
              const SizedBox(
                height: 50,
              ),
              AccountViewFooter(
                description: "Already have an account? ",
                buttonText: 'Sign In',
                recognizer: TapGestureRecognizer()..onTap = widget.onTapSignIn,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
