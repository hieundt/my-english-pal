import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AccountViewFooter extends StatelessWidget {
  final String description;
  final String buttonText;

  factory AccountViewFooter({
    required String description,
    required String buttonText,
  }) {
    return AccountViewFooter._internal(
      description: description,
      buttonText: buttonText,
    );
  }

  const AccountViewFooter._internal({
    required this.description,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.ROW,
      rowMainAxisAlignment: MainAxisAlignment.center,
      children: [
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: Text(
            description,
            style: ralewayStyle.copyWith(
              fontSize: 15,
              color: AppColors.greyColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: AppButton(
            layout: AppButtonType.TEXTBUTTON,
            buttonText: buttonText,
            buttonTextColor: AppColors.mainThemeColor,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
