import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

class AppNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;
  const AppNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.house_fill),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.group_solid),
          label: 'Comunity',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.doc_checkmark_fill),
          label: 'Assessment',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.create),
          label: 'Grammar',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: AppColors.darkGreyColor,
      selectedItemColor: AppColors.darkGreenColor,
    );
  }
}
