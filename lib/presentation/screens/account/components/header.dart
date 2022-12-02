import 'package:flutter/material.dart';

import 'package:myenglishpal_web/rsc/images/app_images.dart';

import 'package:responsive_framework/responsive_framework.dart';

class AccountViewHeader extends StatelessWidget {
  final Widget title;
  final Widget description;
  final double? headerHeight;

  factory AccountViewHeader({
    required Widget title,
    required Widget description,
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
              scale: 2,
            ),
          ),
          ResponsiveRowColumnItem(
            columnFlex: 1,
            child: title,
          ),
          ResponsiveRowColumnItem(
            columnFlex: 1,
            child: description,
          ),
        ],
      ),
    );
  }
}
