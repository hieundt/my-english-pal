import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/constants/assets.dart';
import 'package:myenglishpal_web/views/assessment_center_view.dart';
import 'package:myenglishpal_web/views/comunity_view.dart';
import 'package:myenglishpal_web/views/grammar_book_view.dart';
import 'package:myenglishpal_web/views/home_page_view.dart';
import 'package:myenglishpal_web/views/progress_view.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  final List<Widget> _screens = [
    const HomePageView(),
    const ProgressView(),
    const ComunityView(),
    const AssessmentCenterView(),
    const GrammarBookView(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My English Pal'),
        actions: const [
          PopUpList(
            menuList: [
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(CupertinoIcons.search),
                  title: Text('Dictionary'),
                ),
              ),
            ],
            tooltip: 'Dictionary',
            icon: Icon(CupertinoIcons.question_circle),
          ),
          //! Help menu button
          PopUpList(
            menuList: [
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(CupertinoIcons.paperplane),
                  title: Text('Walkthrough'),
                ),
              ),
            ],
            tooltip: 'Help',
            icon: Icon(CupertinoIcons.question_circle),
          ),
          //! Profile menu button
          PopUpList(
            menuList: [
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(CupertinoIcons.person),
                  title: Text('My profile'),
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(CupertinoIcons.bell),
                  title: Text('Notification'),
                ),
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(CupertinoIcons.square_arrow_right),
                  title: Text('Sign out'),
                ),
              ),
            ],
            tooltip: 'My Info',
            icon: CircleAvatar(
              radius: 16.0,
              backgroundImage: AssetImage(AssetConstants.shibaImage),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Row(
          children: [
            if (MediaQuery.of(context).size.width >= 640)
              NavigationRail(
                onDestinationSelected: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                destinations: const [
                  NavigationRailDestination(
                    icon: Icon(CupertinoIcons.home),
                    label: Text('Home'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(CupertinoIcons.chart_bar),
                    label: Text('Progress'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(CupertinoIcons.group),
                    label: Text('Comunity'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(CupertinoIcons.doc_checkmark),
                    label: Text('Assessment Center'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(CupertinoIcons.create),
                    label: Text('Grammar Book'),
                  ),
                ],
                selectedIndex: _selectedIndex,
              ),
            Expanded(
              child: _screens[_selectedIndex],
            ),
          ],
        ),
      ),
      bottomNavigationBar: MediaQuery.of(context).size.width < 640
          ? BottomNavigationBar(
              currentIndex: _selectedIndex,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.indigoAccent,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.chart_bar),
                  label: 'Progress',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.group),
                  label: 'Comunity',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.doc_checkmark),
                  label: 'Assessment Center',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.create),
                  label: 'Grammar Book',
                ),
              ],
            )
          : null,
    );
  }
}

class PopUpList extends StatelessWidget {
  const PopUpList(
      {super.key, required this.menuList, this.icon, required this.tooltip});

  final List<PopupMenuEntry> menuList;
  final Widget? icon;
  final String tooltip;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      itemBuilder: ((context) => menuList),
      icon: icon,
      tooltip: tooltip,
    );
  }
}
