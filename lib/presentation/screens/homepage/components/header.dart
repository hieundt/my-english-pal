import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/data/services/firebase/firebase_auth_methods.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_horizontal_card.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
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
      // titleFontSize: ResponsiveValue(
      //   context,
      //   defaultValue: 130.0,
      //   valueWhen: [
      //     const Condition.smallerThan(
      //       name: TABLET,
      //       value: 50.0,
      //     ),
      //   ],
      // ).value!,
      // descriptionFontSize: ResponsiveValue(
      //   context,
      //   defaultValue: 20.0,
      //   valueWhen: [
      //     const Condition.smallerThan(
      //       name: TABLET,
      //       value: 15.0,
      //     ),
      //   ],
      // ).value!,
      layout: AppHorizontalCardType.imageOnTheRight,
      title: Text('Welcome! '),
      description: _userUid.call(),
      image: Image.asset(
        fit: BoxFit.cover,
        HomePageImages.headerImages,
        height: ResponsiveValue(
          context,
          defaultValue: 300.0,
          valueWhen: [
            const Condition.smallerThan(
              name: TABLET,
              value: 200.0,
            ),
          ],
        ).value!,
      ),
      button: AppButton(
        layout: AppButtonType.textButton,
        onPressed: () {},
      ),
    );
  }
}
