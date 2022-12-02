import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/navigation/navigate_controller.dart';
import 'package:myenglishpal_web/presentation/screens/account/background.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/header.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/utils.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  Timer? timer;
  bool isEmailVerify = false;

  @override
  void initState() {
    super.initState();
    isEmailVerify = FirebaseAuth.instance.currentUser!.emailVerified;
    if (!isEmailVerify) {
      sendVerificationEmail();
      timer = Timer.periodic(
        const Duration(
          seconds: 5,
        ),
        (_) => checkEmailVerify(),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel;
  }

  Future checkEmailVerify() async {
    await FirebaseAuth.instance.currentUser!.reload();

    setState(() {
      isEmailVerify = FirebaseAuth.instance.currentUser!.emailVerified;
    });

    if (isEmailVerify) timer?.cancel();
  }

  Future sendVerificationEmail() async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar(
        e.message,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isEmailVerify == true) {
      return const NavigateController();
    } else {
      return Scaffold(
        body: AccountViewBackGround(
          child: ListView(
            children: [
              AccountViewHeader(
                title: 'Verify your email address',
                description:
                    "We've sent an email to exampale@gmail.com to verify your email",
              ),
              AppButton(
                layout: AppButtonType.ELEVATEDBUTTON,
                buttonText: 'Re-send verify email',
                onPressed: () {},
              ),
            ],
          ),
        ),
      );
    }
  }
}
