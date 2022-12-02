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
          const HomePageHeader(),
          const SizedBox(
            height: 100,
          ),
          Text(
            'Vocabulary section',
            style: ralewayStyle.copyWith(
              fontSize: ResponsiveValue(
                context,
                defaultValue: 50.0,
                valueWhen: [
                  const Condition.smallerThan(
                    name: MOBILE,
                    value: 40.0,
                  ),
                ],
              ).value,
              color: AppColors.greyTextColor,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const HomePageVocabulary(),
          const SizedBox(
            height: 100,
          ),
          Text(
            'Trainning section',
            style: ralewayStyle.copyWith(
              fontSize: ResponsiveValue(
                context,
                defaultValue: 50.0,
                valueWhen: [
                  const Condition.smallerThan(
                    name: MOBILE,
                    value: 40.0,
                  ),
                ],
              ).value,
              color: AppColors.greyTextColor,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const HomePageTraining(),
        ],
      ),
    );
  }
}
