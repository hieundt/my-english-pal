import 'package:flutter/material.dart';
import 'package:myenglishpal_web/constants/components.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar,
      body: Row(
        children: [
          NavigationRail(
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            destinations: defaultNavigationRailItem,
            selectedIndex: _selectedIndex,
            minWidth: 100,
            elevation: 50,
            backgroundColor: Colors.grey[50],
          ),
        ],
      ),
    );
  }
}
