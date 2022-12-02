import 'package:flutter/material.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';

class AppListTitleCard extends StatelessWidget {
  final Widget cardTitle;
  final Widget cardLeadingIcon;
  final int iTemCount;
  final List<Widget> cardItemTitle;
  final List<Widget> cardItemLeadingIcon;
  final void Function()? onItemTap;
  final double? cardTitleFontSize;
  final double? cardItemTitleFontSize;
  final double? elevation;
  final Color? cardColor;
  final Color? cardTitleColor;
  final Color? shadowColor;
  final RoundedRectangleBorder? shape;
  final EdgeInsetsGeometry? margin;

  factory AppListTitleCard({
    required Widget cardTitle,
    required Widget cardLeadingIcon,
    required int iTemCount,
    required List<Widget> cardItemTitle,
    required List<Widget> cardItemLeadingIcon,
    void Function()? onItemTap,
    double? cardTitleFontSize = 30.0,
    double? cardItemTitleFontSize = 20.0,
    double? elevation = 50.0,
    Color? cardColor = AppColors.whiteColor,
    Color? cardTitleColor = AppColors.backColor,
    Color? shadowColor = AppColors.greyColor,
    RoundedRectangleBorder? shape,
    EdgeInsetsGeometry? margin,
  }) {
    return AppListTitleCard._internal(
      cardTitle: cardTitle,
      cardLeadingIcon: cardLeadingIcon,
      iTemCount: iTemCount,
      cardItemTitle: cardItemTitle,
      cardItemLeadingIcon: cardItemLeadingIcon,
      onItemTap: onItemTap,
      cardTitleFontSize: cardTitleFontSize,
      cardItemTitleFontSize: cardItemTitleFontSize,
      elevation: elevation,
      cardColor: cardColor,
      cardTitleColor: cardTitleColor,
      shadowColor: shadowColor,
      shape: shape,
      margin: margin,
    );
  }

  const AppListTitleCard._internal({
    required this.cardTitle,
    required this.cardLeadingIcon,
    required this.iTemCount,
    required this.cardItemTitle,
    required this.cardItemLeadingIcon,
    this.onItemTap,
    this.cardTitleFontSize,
    this.cardItemTitleFontSize,
    this.elevation,
    this.cardColor,
    this.cardTitleColor,
    this.shadowColor,
    this.shape,
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
        title: cardTitle,
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
                  title: cardItemTitle[index],
                  leading: cardItemLeadingIcon[index],
                  onTap: onItemTap,
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
