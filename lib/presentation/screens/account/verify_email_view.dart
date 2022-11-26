import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/header.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_text_field.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AccountViewHeader(
            title: 'Forgot your password?',
            description:
                "Enter the email you registered with and we'll send a link to reset the password",
          ),
          AppTextField(
            layout: AppTextFieldType.EMAIL,
            hintText: 'Enter your email here',
          ),
          AppButton(
            layout: AppButtonType.ELEVATEDBUTTON,
            buttonText: 'Send a link',
          ),
        ],
      ),
    );
  }
}
