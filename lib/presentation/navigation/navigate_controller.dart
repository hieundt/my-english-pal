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
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../widgets/main_appabar.dart';

class NavigateController extends StatefulWidget {
  const NavigateController({super.key});

  @override
  State<NavigateController> createState() => _NavigateControllerState();
}

class _NavigateControllerState extends State<NavigateController> {
  final List<Widget> _screens = [
    const HomePageView(),
    const CommunityView(),
    const SimulatorView(),
    const GrammarView(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: 'My English Pal',
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
