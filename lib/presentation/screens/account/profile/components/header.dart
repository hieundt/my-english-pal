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
      titleFontSize: 50,
      color: AppColors.mainThemeColor,
      layout: AppHorizontalCardType.IMAGEONTHELEFT,
      title: 'User information',
      image: const CircleAvatar(
        radius: 100,
        backgroundImage: AssetImage(
          UserAvatar.shibaImage,
        ),
      ),
      button: AppButton(
        layout: AppButtonType.TEXTBUTTON,
        buttonText: 'Back to home page',
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
