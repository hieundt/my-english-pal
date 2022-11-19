import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const defaultNavigationBarItem = [
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
    label: 'Simulator',
  ),
  BottomNavigationBarItem(
    icon: Icon(CupertinoIcons.create),
    label: 'Grammar',
  ),
];

const defaultNavigationRailItem = [
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
];
