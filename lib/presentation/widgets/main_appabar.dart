import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_popup_menu_button.dart';

import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/rsc/strings/popup_menu_button_string.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  final Widget? leading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  const MainAppBar({
    super.key,
    this.title = '',
    this.leading,
    this.actions,
    this.backgroundColor = AppColors.mainThemeColor,
  });

  @override
  Size get preferredSize => const Size(
        double.maxFinite,
        80,
      );

  @override
  Widget build(BuildContext context) {
    // List<UserInfoButtonString> userInfoButtonString =
    //     UserInfoButtonString.userInfoButtonString;
    // List<TutorialButtonString> tutorialButtonString =
    //     TutorialButtonString.tutorialButtonString;
    // List<DocumentButtonString> documentButtonString =
    //     DocumentButtonString.documentButtonString;

    return SafeArea(
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
        child: Stack(
          children: [
            Positioned.directional(
              textDirection: TextDirection.ltr,
              child: Text(
                title,
                style: ralewayStyle.copyWith(
                  fontSize: 30,
                  color: AppColors.greyTextColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
