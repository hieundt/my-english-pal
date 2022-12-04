import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/data/services/firebase/firebase_auth_methods.dart';
import 'package:myenglishpal_web/presentation/widgets/app_horizontal_card.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePageHeader extends StatelessWidget {
  HomePageHeader({super.key});

  final User? user = FirebaseAuthServices().currentUser;

  Widget _userUid() {
    return Text(user?.email ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return AppHorizontalCard(
      color: AppColors.lightPinkColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 10,
      layout: AppHorizontalCardType.imageOnTheRight,
      title: Text(
        'Welcome! ',
        style: (ResponsiveWrapper.of(context).isSmallerThan(TABLET))
            ? AppTextStyle.bungee50
            : AppTextStyle.bungee100,
      ),
      description: _userUid.call(),
      image: Image.asset(
        fit: BoxFit.cover,
        HomePageImages.headerImages,
        height: 300,
      ),
    );
  }
}
