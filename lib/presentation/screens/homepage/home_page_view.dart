import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/content/training.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/content/vocabulary.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/header.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: [
          HomePageHeader(),
          const SizedBox(
            height: 100,
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.lightGreenColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              'Vocabulary training',
              style: (ResponsiveWrapper.of(context).isSmallerThan(MOBILE))
                  ? AppTextStyle.robotoMono30
                  : AppTextStyle.robotoMono50,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const HomePageVocabulary(),
          const SizedBox(
            height: 100,
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.lightGreenColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              'Skills training',
              style: (ResponsiveWrapper.of(context).isSmallerThan(MOBILE))
                  ? AppTextStyle.robotoMono30
                  : AppTextStyle.robotoMono50,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const HomePageSkillTraining(),
        ],
      ),
    );
  }
}
