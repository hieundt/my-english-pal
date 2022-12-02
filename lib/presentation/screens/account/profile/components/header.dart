import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_horizontal_card.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppHorizontalCard(
      elevation: 10,
      //titleFontSize: 17,
      color: AppColors.mainThemeColor,
      layout: AppHorizontalCardType.imageOnTheLeft,
      title: Text('User info'),
      image: const CircleAvatar(
        radius: 100,
        backgroundImage: AssetImage(
          UserAvatar.shibaImage,
        ),
      ),
      button: AppButton(
        layout: AppButtonType.textButton,
        buttonTitle: const Icon(
          CupertinoIcons.home,
          size: 50,
        ),
        onPressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil(
            navigateControllerRoute,
            (route) => false,
          );
        },
      ),
    );
  }
}
