import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

class AccountViewFooter extends StatelessWidget {
  final String description;
  final String buttonText;
  final GestureRecognizer? recognizer;

  factory AccountViewFooter({
    required String description,
    required String buttonText,
    required GestureRecognizer? recognizer,
  }) {
    return AccountViewFooter._internal(
      description: description,
      buttonText: buttonText,
      recognizer: recognizer,
    );
  }

  const AccountViewFooter._internal({
    required this.description,
    required this.buttonText,
    required this.recognizer,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: ralewayStyle.copyWith(
          fontSize: 15,
          color: AppColors.greyColor,
          fontWeight: FontWeight.w500,
        ),
        text: description,
        children: [
          TextSpan(
            recognizer: recognizer,
            text: buttonText,
            style: ralewayStyle.copyWith(
              fontSize: 15,
              color: AppColors.darkBlueColor,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
