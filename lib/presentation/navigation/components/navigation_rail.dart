import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

class AppNavigationRail extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  const AppNavigationRail({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      destinations: [
        NavigationRailDestination(
          icon: const Icon(CupertinoIcons.house_fill),
          label: Text(
            'Home',
            style: AppTextStyle.robotoMono15,
          ),
        ),
        NavigationRailDestination(
          icon: const Icon(CupertinoIcons.group_solid),
          label: Text(
            'Comunity',
            style: AppTextStyle.robotoMono15,
          ),
        ),
        NavigationRailDestination(
          icon: const Icon(CupertinoIcons.doc_checkmark_fill),
          label: Text(
            'Assessment',
            style: AppTextStyle.robotoMono15,
          ),
        ),
        NavigationRailDestination(
          icon: const Icon(CupertinoIcons.create),
          label: Text(
            'Grammar',
            style: AppTextStyle.robotoMono15,
          ),
        ),
      ],
      labelType: NavigationRailLabelType.selected,
      selectedIconTheme: const IconThemeData(
        color: AppColors.pinkColor,
        size: 50,
      ),
      backgroundColor: AppColors.whiteColor,
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
    );
  }
}
