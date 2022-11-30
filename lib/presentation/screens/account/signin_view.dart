import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/footer.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/header.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_text_field.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
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
          ),
          AppTextField(
            layout: AppTextFieldType.PASSWORD,
            hintText: 'Enter your password here',
          ),
          AppButton(
            layout: AppButtonType.TEXTBUTTON,
            buttonText: 'Forgot password?',
            onPressed: () {},
          ),
          AppButton(
            layout: AppButtonType.ELEVATEDBUTTON,
            buttonText: 'Sign In',
            onPressed: () {},
          ),
          AccountViewFooter(
            description: "Don't have an account?",
            buttonText: 'Create',
          ),
        ],
      ),
    );
  }
}
