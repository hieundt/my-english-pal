import 'package:flutter/material.dart';

class PopUpList extends StatelessWidget {
  const PopUpList({
    super.key,
    required this.menuList,
    this.icon,
    required this.tooltip,
  });

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
