import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/navigation/components/navigate_items.dart';
import 'package:myenglishpal_web/presentation/screens/assessment_center/assessment_center_view.dart';
import 'package:myenglishpal_web/presentation/screens/comunity/community_view.dart';
import 'package:myenglishpal_web/presentation/screens/grammar_book/grammar_book_view.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/home_page_view.dart';
import 'package:myenglishpal_web/presentation/screens/progress/progress_view.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'components/main_appbar/main_appabar.dart';

class NavigateController extends StatefulWidget {
  const NavigateController({super.key});

  @override
  State<NavigateController> createState() => _NavigateControllerState();
}

class _NavigateControllerState extends State<NavigateController> {
  final List<Widget> _screens = [
    const HomePageView(),
    const ProgressView(),
    const CommunityView(),
    const AssessmentCenterView(),
    const GrammarBookView(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar,
      body: SafeArea(
        child: ResponsiveVisibility(
          // hiddenWhen: const [
          //   Condition.smallerThan(name: TABLET),
          // ],
          // visibleWhen: const [
          //   Condition.largerThan(name: TABLET),
          // ],
          child: Row(
            children: [
              NavigationRail(
                onDestinationSelected: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
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
      ),
      //! ĐÂY LÀ BOTTOM NAVIGATION BAR
      //! CHỖ NÀY BỊ BUG KO HIỂN THỊ ĐƯỢC VIEW, ĐANG FIX
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   unselectedItemColor: Colors.grey,
      //   selectedItemColor: Colors.indigoAccent,
      //   onTap: (index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      //   items: defaultNavigationBarItem,
      // ),
    );
  }
}
