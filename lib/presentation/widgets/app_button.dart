import 'package:flutter/material.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';

enum AppButtonType {
  floatingActionButton,
  textButton,
}

class AppButton extends StatelessWidget {
  final AppButtonType layout;
  final Widget? buttonTitle;
  final Widget? buttonLeading;
  final void Function()? onPressed;
  final Color? buttonColor;
  final Color? leadingIconColor;
  get isElevated => layout == AppButtonType.floatingActionButton;
  get isText => layout == AppButtonType.textButton;

  factory AppButton({
    required AppButtonType layout,
    Widget? buttonTitle,
    Widget? buttonLeading,
    void Function()? onPressed,
    Color? buttonColor = AppColors.mainThemeColor,
    Color? leadingIconColor = AppColors.mainThemeColor,
  }) {
    return AppButton._internal(
      layout: layout,
      buttonTitle: buttonTitle,
      buttonLeading: buttonLeading,
      onPressed: onPressed,
      buttonColor: buttonColor,
      leadingIconColor: leadingIconColor,
    );
  }

  const AppButton._internal({
    required this.layout,
    this.buttonTitle,
    this.buttonLeading,
    this.onPressed,
    this.buttonColor,
    this.leadingIconColor,
  });

  @override
  Widget build(BuildContext context) {
    if (layout == AppButtonType.floatingActionButton) {
      return FloatingActionButton.extended(
        label: SizedBox(
          child: buttonTitle,
        ),
        icon: buttonLeading,
        onPressed: onPressed,
        backgroundColor: buttonColor,
        heroTag: null,
      );
    }
    return TextButton(
      onPressed: onPressed,
      child: SizedBox(
        child: buttonTitle,
      ),
    );
  }
}
