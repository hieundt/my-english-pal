import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppVerticalCard extends StatelessWidget {
  final Widget image;
  final Widget title;
  final Widget? description;
  final AppButton? button;
  final double? elevation;
  final Color? color;
  final Color? shadowColor;
  final RoundedRectangleBorder? shape;
  final EdgeInsetsGeometry? margin;

  factory AppVerticalCard({
    required Widget image,
    required Widget title,
    Widget? description,
    AppButton? button,
    double? elevation = 0,
    Color? color = AppColors.whiteColor,
    Color? shadowColor = AppColors.greyColor,
    RoundedRectangleBorder? shape,
    EdgeInsetsGeometry? margin,
  }) {
    return AppVerticalCard._internal(
      image: image,
      title: title,
      description: description,
      button: button,
      shape: shape,
      elevation: elevation,
      color: color,
      shadowColor: shadowColor,
      margin: margin,
    );
  }

  const AppVerticalCard._internal({
    required this.image,
    required this.title,
    this.description,
    this.button,
    this.elevation,
    this.color,
    this.shadowColor,
    this.shape,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        elevation: elevation,
        color: color,
        shadowColor: shadowColor,
        shape: shape,
        margin: margin,
        child: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.COLUMN,
          rowMainAxisAlignment: MainAxisAlignment.center,
          rowPadding: const EdgeInsets.all(15.0),
          columnPadding: const EdgeInsets.all(15.0),
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 2,
              child: image,
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: title,
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: SizedBox(
                child: description,
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: SizedBox(
                child: button,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
