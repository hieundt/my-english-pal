import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/account/background.dart';

import 'package:myenglishpal_web/presentation/screens/account/components/header.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_text_field.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

import 'package:responsive_framework/responsive_framework.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AccountViewBackGround(
        child: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.COLUMN,
          children: [
            ResponsiveRowColumnItem(
              columnFlex: 5,
              child: AccountViewHeader(
                title: Text(
                  'Forgot your password?',
                  style: AppTextStyle.bungee30,
                ),
                description: Text(
                  "Enter the email you registered with and we'll send a link to reset the password",
                  style: AppTextStyle.bungee15,
                ),
              ),
            ),
            ResponsiveRowColumnItem(
              columnFlex: 1,
              child: AppTextFormField(
                layout: AppTextFieldType.EMAIL,
                hintText: 'Enter your email here',
                controller: _emailController,
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
              child: AppButton(
                layout: AppButtonType.floatingActionButton,
                buttonTitle: Text(
                  'Sign Up',
                  style: AppTextStyle.bungeeHairline15,
                ),
                onPressed: () {},
              ),
            ),
            const ResponsiveRowColumnItem(
              columnFlex: 1,
              child: SizedBox(
                height: 10,
              ),
            ),
            ResponsiveRowColumnItem(
              columnFlex: 1,
              child: AppButton(
                layout: AppButtonType.textButton,
                buttonTitle: Text(
                  'Back to sign in',
                  style: AppTextStyle.bungeeHairline15,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    signInRoute,
                    (route) => false,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
