import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const defaultNavigationBarItem = [
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
    label: 'Simulator',
  ),
  BottomNavigationBarItem(
    icon: Icon(CupertinoIcons.create),
    label: 'Grammar',
  ),
];

const defaultNavigationRailItem = [
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
];
