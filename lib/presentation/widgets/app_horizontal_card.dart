// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:responsive_framework/responsive_framework.dart';

enum AppHorizontalCardType {
  IMAGEONTHELEFT,
  IMAGEONTHERIGHT,
}

class AppHorizontalCard extends StatelessWidget {
  final AppHorizontalCardType layout;
  final String title;
  final double titleFontSize;

  final String image;
  final double? imageHeight;
  final double? imageWidth;

  final String description;
  final double? descriptionFontSize;

  final AppButton button;

  final double cardWidth;
  final Color? color;
  final Color? shadowColor;
  final RoundedRectangleBorder? shape;
  final double? elevation;
  final EdgeInsetsGeometry? margin;
  get isLeft => layout == AppHorizontalCardType.IMAGEONTHELEFT;
  get isRight => layout == AppHorizontalCardType.IMAGEONTHERIGHT;

  factory AppHorizontalCard({
    required AppHorizontalCardType layout,
    required String title,
    required String image,
    required AppButton button,
    String description = '',
    double titleFontSize = 26,
    double imageHeight = 400.0,
    double imageWidth = 600,
    double descriptionFontSize = 10,
    double cardWidth = 1000,
    Color? color = AppColors.backColor,
    Color? shadowColor = AppColors.greyColor,
    RoundedRectangleBorder? shape,
    double? elevation = 50.0,
    EdgeInsetsGeometry? margin,
  }) {
    return AppHorizontalCard._internal(
      layout: layout,
      title: title,
      titleFontSize: titleFontSize,
      image: image,
      imageHeight: imageHeight,
      imageWidth: imageWidth,
      description: description,
      descriptionFontSize: descriptionFontSize,
      button: button,
      cardWidth: cardWidth,
      color: color,
      shadowColor: shadowColor,
      shape: shape,
      elevation: elevation,
      margin: margin,
    );
  }

  const AppHorizontalCard._internal({
    required this.layout,
    required this.title,
    required this.titleFontSize,
    required this.image,
    required this.description,
    required this.cardWidth,
    required this.shadowColor,
    required this.button,
    this.imageHeight,
    this.imageWidth,
    this.descriptionFontSize,
    this.color,
    this.shape,
    this.elevation,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cardWidth,
      child: Card(
        shape: shape,
        color: color,
        elevation: elevation,
        shadowColor: shadowColor,
        margin: margin,
        child: (layout == AppHorizontalCardType.IMAGEONTHELEFT)
            ? ResponsiveRowColumn(
                layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                rowMainAxisAlignment: MainAxisAlignment.start,
                rowPadding: const EdgeInsets.all(20.0),
                columnPadding: const EdgeInsets.all(20.0),
                children: [
                  ResponsiveRowColumnItem(
                    rowFlex: 6,
                    child: Image.asset(
                      image,
                      height: imageHeight,
                      width: imageWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: SizedBox(
                      width: 10,
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 3,
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.COLUMN,
                      children: [
                        ResponsiveRowColumnItem(
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
                          child: Text(
                            description,
                            style: ralewayStyle.copyWith(
                              fontSize: descriptionFontSize,
                              color: AppColors.greyTextColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: button,
                        )
                      ],
                    ),
                  ),
                ],
              )
            : ResponsiveRowColumn(
                layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                rowMainAxisAlignment: MainAxisAlignment.start,
                rowPadding: const EdgeInsets.all(15.0),
                columnPadding: const EdgeInsets.all(15.0),
                children: [
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.COLUMN,
                      children: [
                        ResponsiveRowColumnItem(
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
                          child: Text(
                            description,
                            style: ralewayStyle.copyWith(
                              fontSize: descriptionFontSize,
                              color: AppColors.greyTextColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: button,
                        )
                      ],
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: Image.asset(
                      image,
                      height: imageHeight,
                      width: imageWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
