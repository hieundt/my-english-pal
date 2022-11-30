import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/footer.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/header.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_text_field.dart';
import 'package:myenglishpal_web/routes.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AccountViewHeader(
            title: 'Create your account',
            description: 'Please provide us your information below',
          ),
          AppTextField(
            layout: AppTextFieldType.EMAIL,
            hintText: 'Enter your email here',
          ),
          AppTextField(
            layout: AppTextFieldType.PASSWORD,
            hintText: 'Enter new password',
          ),
          AppTextField(
            layout: AppTextFieldType.PASSWORD,
            hintText: 'Enter password confirmation',
          ),
          AppButton(
            layout: AppButtonType.ELEVATEDBUTTON,
            buttonText: 'Register',
            onPressed: () {},
          ),
          AccountViewFooter(
            description: "Already have an account?",
            buttonText: 'Sign In',
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                signInRoute,
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
