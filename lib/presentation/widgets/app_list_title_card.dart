import 'package:flutter/material.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

class AppListTitleCard extends StatelessWidget {
  final int iTemCount;
  final String cardTitle;
  final double? cardTitleFontSize;

  final Widget cardLeadingIcon;

  final List<String> cardItemTitle;
  final double? cardItemTitleFontSize;

  final List<Widget> cardItemLeadingIcon;
  final Color? cardColor;
  final Color? cardTitleColor;
  final Color? shadowColor;
  final RoundedRectangleBorder? shape;
  final double? elevation;
  final EdgeInsetsGeometry? margin;

  factory AppListTitleCard({
    required int iTemCount,
    required String cardTitle,
    required Widget cardLeadingIcon,
    required List<String> cardItemTitle,
    required List<Widget> cardItemLeadingIcon,
    double cardTitleFontSize = 30.0,
    double cardItemTitleFontSize = 20.0,
    Color? cardColor = AppColors.whiteColor,
    Color? cardTitleColor = AppColors.backColor,
    Color? shadowColor = AppColors.greyColor,
    RoundedRectangleBorder? shape,
    double? elevation = 50.0,
    EdgeInsetsGeometry? margin,
  }) {
    return AppListTitleCard._internal(
      iTemCount: iTemCount,
      cardTitle: cardTitle,
      cardLeadingIcon: cardLeadingIcon,
      cardItemTitle: cardItemTitle,
      cardItemLeadingIcon: cardItemLeadingIcon,
      cardTitleFontSize: cardTitleFontSize,
      cardItemTitleFontSize: cardItemTitleFontSize,
      cardColor: cardColor,
      cardTitleColor: cardTitleColor,
      shadowColor: shadowColor,
      shape: shape,
      elevation: elevation,
      margin: margin,
    );
  }

  const AppListTitleCard._internal({
    required this.iTemCount,
    required this.cardTitle,
    required this.cardLeadingIcon,
    required this.cardItemTitle,
    required this.cardItemLeadingIcon,
    this.cardTitleFontSize,
    this.cardItemTitleFontSize,
    this.cardColor,
    this.cardTitleColor,
    this.shadowColor,
    this.shape,
    this.elevation,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: shape,
      elevation: elevation,
      color: cardColor,
      shadowColor: shadowColor,
      margin: margin,
      child: ExpansionTile(
        initiallyExpanded: true,
        leading: cardLeadingIcon,
        title: Text(
          cardTitle,
          style: ralewayStyle.copyWith(
            fontSize: cardTitleFontSize,
            color: AppColors.greyTextColor,
            fontWeight: FontWeight.w800,
          ),
        ),
        children: [
          Card(
            shape: shape,
            color: cardTitleColor,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(
                parent: null,
              ),
              itemBuilder: (
                context,
                index,
              ) {
                return ListTile(
                  title: Text(
                    cardItemTitle[index],
                    style: ralewayStyle.copyWith(
                      fontSize: cardItemTitleFontSize,
                      color: AppColors.greyTextColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  leading: cardItemLeadingIcon[index],
                  onTap: () {},
                );
              },
              itemCount: iTemCount,
            ),
          ),
        ],
      ),
    );
  }
}
