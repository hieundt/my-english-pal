import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/strings/popup_menu_button_string.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

class TutorialPopupMenu extends StatelessWidget {
  final void Function(TutorialMenuAction) onSelected;
  const TutorialPopupMenu({
    super.key,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    List<TutorialButtonString> tutorialButtonString =
        TutorialButtonString.tutorialButtonString;
    return PopupMenuButton<TutorialMenuAction>(
      onSelected: onSelected,
      itemBuilder: (context) => tutorialButtonString
          .map(
            (e) => PopupMenuItem<TutorialMenuAction>(
              value: e.value,
              child: ListTile(
                leading: e.leadingIcon,
                title: Text(e.title),
              ),
            ),
          )
          .toList(),
      tooltip: 'Tutorial',
      icon: Icon(
        CupertinoIcons.rocket_fill,
        color: AppColors.lightOrangeColor,
        shadows: AppBoxShadowStyle.appBoxShadow,
      ),
    );
  }
}

class DocumentPopupMenu extends StatelessWidget {
  final void Function(DocumentMenuAction) onSelected;
  const DocumentPopupMenu({
    super.key,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    List<DocumentButtonString> documentButtonString =
        DocumentButtonString.documentButtonString;
    return PopupMenuButton<DocumentMenuAction>(
      onSelected: onSelected,
      itemBuilder: (context) => documentButtonString
          .map(
            (e) => PopupMenuItem<DocumentMenuAction>(
              value: e.value,
              child: ListTile(
                leading: e.leadingIcon,
                title: Text(e.title),
              ),
            ),
          )
          .toList(),
      tooltip: 'Document',
      icon: Icon(
        CupertinoIcons.folder_fill,
        color: AppColors.limeColor,
        shadows: AppBoxShadowStyle.appBoxShadow,
      ),
    );
  }
}

class UserInfoPopupMenu extends StatelessWidget {
  final void Function(UserMenuAction) onSelected;
  const UserInfoPopupMenu({
    super.key,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    List<UserInfoButtonString> userInfoButtonString =
        UserInfoButtonString.userInfoButtonString;

    return PopupMenuButton<UserMenuAction>(
      onSelected: onSelected,
      itemBuilder: (context) => userInfoButtonString
          .map(
            (e) => PopupMenuItem<UserMenuAction>(
              value: e.value,
              child: ListTile(
                leading: e.leadingIcon,
                title: Text(e.title),
              ),
            ),
          )
          .toList(),
      tooltip: 'User',
      icon: Icon(
        CupertinoIcons.person_fill,
        color: AppColors.lightGreenColor,
        shadows: AppBoxShadowStyle.appBoxShadow,
      ),
    );
  }
}
