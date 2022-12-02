import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/content/training.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/content/vocabulary.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/header.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

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
          Text(
            'Vocabulary section',
            style: AppTextStyle.appTitle,
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
            style: AppTextStyle.appTitle,
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
