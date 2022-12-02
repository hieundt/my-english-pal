import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/account/background.dart';

import 'package:myenglishpal_web/presentation/screens/account/components/header.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_text_form_field.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/utils.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({
    super.key,
  });

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  late final TextEditingController _emailController;

  @override
  void initState() {
    _emailController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();

    super.dispose();
  }

  Future resetPassword() async {
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
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: _emailController.text.trim(),
      );
      Utils.showSnackBar(
        'Password reset email sent',
      );
      // ignore: use_build_context_synchronously
      Navigator.of(context).popUntil(
        (route) => route.isFirst,
      );
    } on FirebaseAuthException catch (e) {
      log(
        e.toString(),
      );
      Utils.showSnackBar(
        e.message,
      );
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AccountViewBackGround(
        child: ListView(
          children: [
            AccountViewHeader(
              title: 'Forgot your password?',
              description:
                  "Enter the email you registered with and we'll send a link to reset the password",
            ),
            AppTextFormField(
              layout: AppTextFieldType.EMAIL,
              hintText: 'Enter your email here',
              controller: _emailController,
            ),
            const SizedBox(
              height: 50,
            ),
            AppButton(
              layout: AppButtonType.ELEVATEDBUTTON,
              buttonText: 'Send a link',
              onPressed: resetPassword,
            ),
            const SizedBox(
              height: 10,
            ),
            AppButton(
              layout: AppButtonType.TEXTBUTTON,
              buttonText: 'Back to sign in',
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  signInRoute,
                  (route) => false,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
