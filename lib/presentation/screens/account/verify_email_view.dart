import 'package:flutter/material.dart';

import 'package:myenglishpal_web/presentation/screens/account/background.dart';

import 'package:myenglishpal_web/presentation/screens/account/components/header.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';

import 'package:responsive_framework/responsive_framework.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AccountViewBackGround(
        child: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.COLUMN,
          children: [
            ResponsiveRowColumnItem(
              columnFlex: 1,
              child: AccountViewHeader(
                title: Text('Verify your email address'),
                description: Text("We've sent an email verification to"),
              ),
            ),
            ResponsiveRowColumnItem(
              columnFlex: 1,
              child: AppButton(
                layout: AppButtonType.floatingActionButton,
                buttonTitle: Text('Re-send verify email'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
