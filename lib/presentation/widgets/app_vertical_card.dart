import 'package:flutter/material.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppVerticalCard extends StatelessWidget {
  final String title;
  final double? titleFontSize;

  final String image;
  final double? imageHeight;
  final double? imageWidth;

  final String description;
  final double? descriptionFontSize;

  final ElevatedButton? button;

  final Color? color;
  final Color? shadowColor;
  final RoundedRectangleBorder? shape;
  final double? elevation;
  final EdgeInsetsGeometry? margin;

  factory AppVerticalCard({
    required String title,
    double? titleFontSize = 26,
    required String image,
    double? imageHeight = 400.0,
    double? imageWidth = 600,
    String description = '',
    double? descriptionFontSize = 10,
    ElevatedButton? button,
    Color? color = Colors.white,
    Color? shadowColor = Colors.grey,
    RoundedRectangleBorder? shape,
    double? elevation = 50.0,
    EdgeInsetsGeometry? margin,
  }) {
    return AppVerticalCard._internal(
      title: title,
      titleFontSize: titleFontSize,
      image: image,
      imageHeight: imageHeight,
      imageWidth: imageWidth,
      description: description,
      descriptionFontSize: descriptionFontSize,
      button: button,
      color: color,
      shadowColor: shadowColor,
      shape: shape,
      elevation: elevation,
      margin: margin,
    );
  }

  const AppVerticalCard._internal({
    required this.title,
    required this.titleFontSize,
    required this.image,
    required this.imageHeight,
    required this.imageWidth,
    required this.description,
    required this.descriptionFontSize,
    required this.button,
    required this.color,
    required this.shadowColor,
    required this.shape,
    required this.elevation,
    required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.5,
      child: Card(
        shape: shape,
        elevation: elevation,
        color: color,
        shadowColor: shadowColor,
        margin: margin,
        child: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.COLUMN,
          rowMainAxisAlignment: MainAxisAlignment.center,
          rowPadding: const EdgeInsets.all(15.0),
          columnPadding: const EdgeInsets.all(15.0),
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: Image.asset(
                image,
                height: imageHeight,
                width: imageWidth,
                fit: BoxFit.cover,
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: Text(
                title,
                style: ralewayStyle.copyWith(
                  fontSize: titleFontSize,
                  color: AppColors.greyTextColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: Text(
                description,
                style: ralewayStyle.copyWith(
                  fontSize: descriptionFontSize,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
