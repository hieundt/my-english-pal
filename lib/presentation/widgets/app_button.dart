// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

enum AppButtonType {
  ELEVATEDBUTTON,
  OUTLINEDBUTTON,
  TEXTBUTTON,
}

class AppButton extends StatelessWidget {
  final AppButtonType layout;
  final String buttonText;
  final Color? buttonTextColor;
  final Color? buttonColor;

  get isElevated => layout == AppButtonType.ELEVATEDBUTTON;
  get isOutlined => layout == AppButtonType.OUTLINEDBUTTON;
  get isText => layout == AppButtonType.TEXTBUTTON;

  factory AppButton({
    required AppButtonType layout,
    required String buttonText,
    Color? buttonTextColor = AppColors.blackColor,
    Color? buttonColor = AppColors.mainThemeColor,
  }) {
    return AppButton._internal(
      layout: layout,
      buttonText: buttonText,
      buttonTextColor: buttonTextColor,
      buttonColor: buttonColor,
    );
  }

  const AppButton._internal({
    required this.layout,
    required this.buttonText,
    this.buttonTextColor,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    if (layout == AppButtonType.ELEVATEDBUTTON) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          buttonText,
          style: ralewayStyle.copyWith(
            fontSize: 20,
            color: buttonTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    } else if (layout == AppButtonType.OUTLINEDBUTTON) {
      return OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: buttonColor!,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          buttonText,
          style: ralewayStyle.copyWith(
            fontSize: 20,
            color: buttonTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }
    return TextButton(
      child: Text(
        buttonText,
        style: ralewayStyle.copyWith(
          fontSize: 15,
          color: buttonTextColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      onPressed: () {},
    );
  }
}
