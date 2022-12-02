import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/navigation/navigate_controller.dart';
import 'package:myenglishpal_web/presentation/screens/account/verify_email_view.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

import 'presentation/screens/account/auth_controller.dart';

class Initiator extends StatelessWidget {
  const Initiator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: LinearProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Something went wrong :(',
                style: ralewayStyle.copyWith(
                  fontSize: 50,
                  color: AppColors.greyTextColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            );
          } else if (snapshot.hasData) {
            return const VerifyEmailView();
          } else {
            return const AuthController();
          }
        },
      ),
    );
  }
}
