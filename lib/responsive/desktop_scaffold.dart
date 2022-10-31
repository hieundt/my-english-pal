import 'package:flutter/material.dart';
import 'package:myenglishpal_web/constants/components.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
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
            elevation: 50,
            extended: true,
            minExtendedWidth: 300,
            backgroundColor: Colors.grey[50],
          ),
          Expanded(
            child: screens[_selectedIndex],
          ),
        ],
      ),
    );
  }
}
