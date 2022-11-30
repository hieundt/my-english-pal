import 'package:flutter/cupertino.dart';

class UserInfoButtonString {
  static final userInfoButtonString = [
    UserInfoButtonString(
      title: 'My profile',
      leadingIcon: const Icon(
        CupertinoIcons.person_fill,
      ),
    ),
    UserInfoButtonString(
      title: 'Sign out',
      leadingIcon: const Icon(
        CupertinoIcons.square_arrow_right_fill,
      ),
    ),
  ];
  final String title;
  final Icon leadingIcon;

  UserInfoButtonString({
    required this.title,
    required this.leadingIcon,
  });
}

class TutorialButtonString {
  static final tutorialButtonString = [
    TutorialButtonString(
      title: 'Walkthrough',
      leadingIcon: const Icon(
        CupertinoIcons.paperplane_fill,
      ),
    ),
  ];
  final String title;
  final Icon leadingIcon;

  TutorialButtonString({
    required this.title,
    required this.leadingIcon,
  });
}

class DocumentButtonString {
  static final documentButtonString = [
    DocumentButtonString(
      title: 'Dictionary',
      leadingIcon: const Icon(
        CupertinoIcons.search,
      ),
    ),
  ];
  final String title;
  final Icon leadingIcon;

  DocumentButtonString({
    required this.title,
    required this.leadingIcon,
  });
}
