import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/navigation/components/navigation_bar.dart';
import 'package:myenglishpal_web/presentation/navigation/components/navigation_rail.dart';
import 'package:myenglishpal_web/presentation/navigation/components/popup_menu_button.dart';
import 'package:myenglishpal_web/presentation/screens/assessment/simulator_view.dart';
import 'package:myenglishpal_web/presentation/screens/comunity/community_view.dart';
import 'package:myenglishpal_web/presentation/screens/grammar/grammar_view.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/home_page_view.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/rsc/strings/popup_menu_button_string.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:responsive_framework/responsive_framework.dart';

class NavigateController extends StatefulWidget {
  const NavigateController({super.key});
  @override
  State<NavigateController> createState() => _NavigateControllerState();
}

class _NavigateControllerState extends State<NavigateController> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomePageView(),
    const CommunityView(),
    const AssessmentView(),
    const GrammarView(),
  ];

  void onNavigationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainThemeColor,
        title: Text(
          'My English Pal',
          style: AppTextStyle.robotoMono15,
        ),
        leading: Transform.scale(
          scale: 1,
          child: Image.asset(AppLogo.myEnglishPalLogo),
        ),
        actions: [
          TutorialPopupMenu(
            onSelected: (value) {
              switch (value) {
                case TutorialMenuAction.WALKTHROUGH:
                  return log('walkthrough');
              }
            },
          ),
          DocumentPopupMenu(
            onSelected: (value) {
              switch (value) {
                case DocumentMenuAction.DICTIONARY:
                  return log('dictionary');
              }
            },
          ),
          UserInfoPopupMenu(
            onSelected: (value) async {
              switch (value) {
                case UserMenuAction.PROFILE:
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    profileRoute,
                    (route) => false,
                  );
                  break;
                case UserMenuAction.SIGNOUT:
                  return await FirebaseAuth.instance.signOut();
              }
            },
          ),
        ],
      ),
      body: Row(
        children: [
          if (ResponsiveWrapper.of(context).isLargerThan(TABLET))
            AppNavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: onNavigationSelected,
            ),
          Expanded(
            child: _screens[_selectedIndex],
          ),
        ],
      ),
      bottomNavigationBar:
          (ResponsiveWrapper.of(context).isSmallerThan(DESKTOP))
              ? AppNavigationBar(
                  selectedIndex: _selectedIndex,
                  onTap: onNavigationSelected,
                )
              : null,
    );
  }
}
