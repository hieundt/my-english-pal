import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class AppLinnearIndicator extends StatelessWidget {
  final String title;
  final IconData icon;
  final double lineHeight;
  final double? lineWidth;
  final double? titleFontSize;
  final double? iconSize;
  final Color? iconColor;
  final Color? leadingColor;
  final Color? progressColor;
  final double percent;

  factory AppLinnearIndicator({
    required String title,
    required IconData icon,
    double? titleFontSize = 30,
    double? iconSize = 50,
    Color? iconColor = AppColors.mainThemeColor,
    Color? leadingColor = AppColors.greyColor,
    Color? progressColor = AppColors.mainThemeColor,
    double lineHeight = 30,
    double? lineWidth = 300,
    double percent = 0,
  }) {
    return AppLinnearIndicator._internal(
      title: title,
      icon: icon,
      titleFontSize: titleFontSize,
      iconSize: iconSize,
      iconColor: iconColor,
      leadingColor: leadingColor,
      progressColor: progressColor,
      lineHeight: lineHeight,
      lineWidth: lineWidth,
      percent: percent,
    );
  }

  const AppLinnearIndicator._internal({
    required this.title,
    required this.icon,
    this.titleFontSize,
    this.iconSize,
    this.iconColor,
    this.leadingColor,
    this.progressColor,
    this.lineHeight = 30,
    this.lineWidth,
    this.percent = 0,
  });

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: lineWidth,
      lineHeight: lineHeight,
      barRadius: const Radius.circular(30),
      percent: percent,
      animation: true,
      animationDuration: 1500,
      progressColor: progressColor,
      leading: SizedBox(
        width: 150,
        height: 85,
        child: Card(
          color: leadingColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Icon(
                icon,
                size: iconSize,
                color: iconColor,
              ),
              Text(
                title,
                style: ralewayStyle.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      ),
      alignment: MainAxisAlignment.center,
    );
  }
}
