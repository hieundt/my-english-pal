import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/navigation/components/main_appbar/popup_list.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';

var mainAppBar = AppBar(
  title: const Text('My English Pal'),
  actions: const [
    //! Dictionary button
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
      icon: Icon(CupertinoIcons.book),
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
        //! Mock user avatar
        backgroundImage: AssetImage(HomePageImages.shibaImage),
      ),
    ),
  ],
);
