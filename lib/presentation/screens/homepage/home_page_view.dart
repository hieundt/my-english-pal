import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/content/training.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/content/vocabulary.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/header.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomePageHeader(),
          const SizedBox(
            height: 100,
          ),
          Text(
            'Vocabulary section',
            style: ralewayStyle.copyWith(
              fontSize: 50,
              color: AppColors.greyTextColor,
              fontWeight: FontWeight.w900,
            ),
          ),
          const HomePageVocabulary(),
          SizedBox(
            height: 100,
            child: Text(
              'Trainning section',
              style: ralewayStyle.copyWith(
                fontSize: 50,
                color: AppColors.greyTextColor,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const HomePageTraining(),
        ],
      ),
    );
  }
}
