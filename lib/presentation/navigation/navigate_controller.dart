// ignore_for_file: constant_identifier_names

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/navigation/navigate_items.dart';
import 'package:myenglishpal_web/presentation/screens/simulator/simulator_view.dart';
import 'package:myenglishpal_web/presentation/screens/comunity/community_view.dart';
import 'package:myenglishpal_web/presentation/screens/grammar/grammar_view.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/home_page_view.dart';
import 'package:myenglishpal_web/presentation/screens/account/profile/profile_view.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/rsc/strings/popup_menu_button_string.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../widgets/main_appabar.dart';

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
    const SimulatorView(),
    const GrammarView(),
  ];

  @override
  Widget build(BuildContext context) {
    List<UserInfoButtonString> userInfoButtonString =
        UserInfoButtonString.userInfoButtonString;
    List<TutorialButtonString> tutorialButtonString =
        TutorialButtonString.tutorialButtonString;
    List<DocumentButtonString> documentButtonString =
        DocumentButtonString.documentButtonString;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainThemeColor,
        title: Text(
          'My English Pal',
          style: ralewayStyle.copyWith(
            fontSize: 30,
            color: AppColors.greyTextColor,
            fontWeight: FontWeight.w800,
          ),
        ),
        leading: Transform.scale(
          scale: 1,
          child: IconButton(
            icon: Image.asset(
              AppLogo.myEnglishPalLogo,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(
                navigateControllerRoute,
              );
            },
          ),
        ),
        actions: [
          PopupMenuButton<TutorialMenuAction>(
            onSelected: (value) {
              switch (value) {
                case TutorialMenuAction.WALKTHROUGH:
                  return log('walkthrough');
              }
            },
            itemBuilder: (context) => tutorialButtonString
                .map(
                  (e) => PopupMenuItem<TutorialMenuAction>(
                    value: e.value,
                    child: ListTile(
                      leading: e.leadingIcon,
                      title: Text(
                        e.title,
                      ),
                    ),
                  ),
                )
                .toList(),
            tooltip: 'Tutorial',
            icon: const Icon(
              CupertinoIcons.rocket_fill,
              color: AppColors.lightOrangeColor,
              shadows: [
                BoxShadow(
                  color: AppColors.greyColor,
                  spreadRadius: 5,
                  blurRadius: 2,
                  offset: Offset(
                    0,
                    3,
                  ), // changes position of shadow
                ),
              ],
            ),
          ),
          PopupMenuButton<DocumentMenuAction>(
            onSelected: (value) {
              switch (value) {
                case DocumentMenuAction.DICTIONARY:
                  return log('dictionary');
              }
            },
            itemBuilder: (context) => documentButtonString
                .map(
                  (e) => PopupMenuItem<DocumentMenuAction>(
                    value: e.value,
                    child: ListTile(
                      leading: e.leadingIcon,
                      title: Text(
                        e.title,
                      ),
                    ),
                  ),
                )
                .toList(),
            tooltip: 'Document',
            icon: const Icon(
              CupertinoIcons.folder_fill,
              color: AppColors.limeColor,
              shadows: [
                BoxShadow(
                  color: AppColors.greyColor,
                  spreadRadius: 5,
                  blurRadius: 2,
                  offset: Offset(
                    0,
                    3,
                  ), // changes position of shadow
                ),
              ],
            ),
          ),
          PopupMenuButton<UserMenuAction>(
            onSelected: (value) {
              switch (value) {
                case UserMenuAction.PROFILE:
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    profileRoute,
                    (route) => false,
                  );
                  break;
                case UserMenuAction.SIGNOUT:
                  return log('signout');
              }
            },
            itemBuilder: (context) => userInfoButtonString
                .map(
                  (e) => PopupMenuItem<UserMenuAction>(
                    value: e.value,
                    child: ListTile(
                      leading: e.leadingIcon,
                      title: Text(
                        e.title,
                      ),
                    ),
                  ),
                )
                .toList(),
            tooltip: 'User',
            icon: const Icon(
              CupertinoIcons.person_fill,
              color: AppColors.lightGreenColor,
              shadows: [
                BoxShadow(
                  color: AppColors.greyColor,
                  spreadRadius: 5,
                  blurRadius: 2,
                  offset: Offset(
                    0,
                    3,
                  ), // changes position of shadow
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Row(
          children: [
            if (ResponsiveWrapper.of(context).isLargerThan(TABLET))
              NavigationRail(
                minWidth: 100,
                labelType: NavigationRailLabelType.selected,
                selectedLabelTextStyle: ralewayStyle.copyWith(
                  color: AppColors.pinkColor,
                  fontWeight: FontWeight.w900,
                ),
                selectedIconTheme: const IconThemeData(
                  color: AppColors.pinkColor,
                  size: 50,
                ),
                onDestinationSelected: (index) {
                  setState(
                    () {
                      _selectedIndex = index;
                    },
                  );
                },
                destinations: defaultNavigationRailItem,
                selectedIndex: _selectedIndex,
              ),
            Expanded(
              child: _screens[_selectedIndex],
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          (ResponsiveWrapper.of(context).isSmallerThan(DESKTOP))
              ? BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: _selectedIndex,
                  unselectedItemColor: AppColors.greyColor,
                  selectedItemColor: AppColors.pinkColor,
                  onTap: (index) {
                    setState(
                      () {
                        _selectedIndex = index;
                      },
                    );
                  },
                  items: defaultNavigationBarItem,
                )
              : null,
    );
  }
}
