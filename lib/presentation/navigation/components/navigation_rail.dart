import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';

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
      destinations: const [
        NavigationRailDestination(
          icon: Icon(CupertinoIcons.house_fill),
          label: Text('Home'),
        ),
        NavigationRailDestination(
          icon: Icon(CupertinoIcons.group_solid),
          label: Text('Comunity'),
        ),
        NavigationRailDestination(
          icon: Icon(CupertinoIcons.doc_checkmark_fill),
          label: Text('Simulator'),
        ),
        NavigationRailDestination(
          icon: Icon(CupertinoIcons.create),
          label: Text('Grammar'),
        ),
      ],
      minWidth: 100,
      labelType: NavigationRailLabelType.selected,
      selectedIconTheme: const IconThemeData(
        color: AppColors.pinkColor,
        size: 50,
      ),
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
    );
  }
}
