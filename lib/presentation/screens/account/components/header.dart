import 'package:flutter/material.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AccountViewHeader extends StatelessWidget {
  final String title;
  final String description;
  final double? headerHeight;

  factory AccountViewHeader({
    required String title,
    required String description,
    double? headerHeight = 200,
  }) {
    return AccountViewHeader._internal(
      title: title,
      description: description,
      headerHeight: headerHeight,
    );
  }

  const AccountViewHeader._internal({
    required this.title,
    required this.description,
    this.headerHeight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: headerHeight,
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
        children: [
          ResponsiveRowColumnItem(
            columnFlex: 1,
            child: Image.asset(
              AppLogo.myEnglishPalLogo,
              scale: 3,
            ),
          ),
          ResponsiveRowColumnItem(
            columnFlex: 1,
            child: Text(
              title,
              style: ralewayStyle.copyWith(
                fontSize: 50,
                color: AppColors.blackColor,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            columnFlex: 1,
            child: Text(
              description,
              style: ralewayStyle.copyWith(
                fontSize: 20,
                color: AppColors.greyColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
