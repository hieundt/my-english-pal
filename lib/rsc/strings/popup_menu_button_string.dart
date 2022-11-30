// ignore_for_file: constant_identifier_names

import 'package:flutter/cupertino.dart';

enum UserMenuAction {
  PROFILE,
  SIGNOUT,
}

enum DocumentMenuAction {
  DICTIONARY,
}

enum TutorialMenuAction {
  WALKTHROUGH,
}

class UserInfoButtonString {
  static final userInfoButtonString = [
    UserInfoButtonString(
      title: 'My profile',
      leadingIcon: const Icon(
        CupertinoIcons.square_favorites_alt,
      ),
      value: UserMenuAction.PROFILE,
    ),
    UserInfoButtonString(
      title: 'Sign out',
      leadingIcon: const Icon(
        CupertinoIcons.square_arrow_right_fill,
      ),
      value: UserMenuAction.SIGNOUT,
    ),
  ];
  final String title;
  final Icon leadingIcon;
  final dynamic value;

  UserInfoButtonString({
    required this.title,
    required this.leadingIcon,
    required this.value,
  });
}

class TutorialButtonString {
  static final tutorialButtonString = [
    TutorialButtonString(
      title: 'Walkthrough',
      leadingIcon: const Icon(
        CupertinoIcons.paperplane_fill,
      ),
      value: TutorialMenuAction.WALKTHROUGH,
    ),
  ];
  final String title;
  final Icon leadingIcon;
  final dynamic value;

  TutorialButtonString({
    required this.title,
    required this.leadingIcon,
    required this.value,
  });
}

class DocumentButtonString {
  static final documentButtonString = [
    DocumentButtonString(
      title: 'Dictionary',
      leadingIcon: const Icon(
        CupertinoIcons.search,
      ),
      value: DocumentMenuAction.DICTIONARY,
    ),
  ];
  final String title;
  final Icon leadingIcon;
  final dynamic value;
  DocumentButtonString(
      {required this.title, required this.leadingIcon, required this.value});
}
