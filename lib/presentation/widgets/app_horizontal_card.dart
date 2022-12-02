import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:responsive_framework/responsive_framework.dart';

enum AppHorizontalCardType {
  imageOnTheLeft,
  imageOnTheRight,
}

class AppHorizontalCard extends StatelessWidget {
  final AppHorizontalCardType layout;
  final Widget image;
  final Widget title;

  final Widget? description;
  final AppButton? button;
  final double? cardWidth;
  final double? elevation;
  final Color? color;
  final Color? shadowColor;
  final RoundedRectangleBorder? shape;
  final EdgeInsetsGeometry? margin;
  get isLeft => layout == AppHorizontalCardType.imageOnTheLeft;
  get isRight => layout == AppHorizontalCardType.imageOnTheRight;

  factory AppHorizontalCard({
    required AppHorizontalCardType layout,
    required Widget image,
    required Widget title,
    Widget? description,
    AppButton? button,
    double cardWidth = double.infinity,
    double? elevation = 0,
    Color? color = AppColors.backColor,
    Color? shadowColor = AppColors.greyColor,
    RoundedRectangleBorder? shape,
    EdgeInsetsGeometry? margin,
  }) {
    return AppHorizontalCard._internal(
      layout: layout,
      image: image,
      title: title,
      description: description,
      button: button,
      cardWidth: cardWidth,
      elevation: elevation,
      color: color,
      shadowColor: shadowColor,
      shape: shape,
      margin: margin,
    );
  }

  const AppHorizontalCard._internal({
    required this.layout,
    required this.title,
    required this.image,
    this.description,
    this.button,
    this.cardWidth,
    this.elevation,
    this.color,
    this.shadowColor,
    this.shape,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cardWidth,
      child: Card(
        elevation: elevation,
        color: color,
        shadowColor: shadowColor,
        shape: shape,
        margin: margin,
        child: (layout == AppHorizontalCardType.imageOnTheLeft)
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
                    child: image,
                  ),
                  const ResponsiveRowColumnItem(
                    rowFlex: 1,
                    child: SizedBox(
                      width: 20,
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 3,
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.COLUMN,
                      children: [
                        ResponsiveRowColumnItem(
                          child: title,
                        ),
                        ResponsiveRowColumnItem(
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
                    rowFlex: 6,
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.COLUMN,
                      children: [
                        ResponsiveRowColumnItem(
                          child: title,
                        ),
                        ResponsiveRowColumnItem(
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
                  const ResponsiveRowColumnItem(
                    child: SizedBox(
                      width: 20,
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 3,
                    child: image,
                  ),
                ],
              ),
      ),
    );
  }
}
