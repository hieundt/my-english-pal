import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/data/model/skill_training/skill_training.dart';

import 'package:myenglishpal_web/data/services/firestore_database.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/content/training/training_quiz/training_quiz_view.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_loading_dialog.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/strings/home_page_view_string.dart';
import 'package:myenglishpal_web/presentation/widgets/app_vertical_card.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

class HomePageSkillTraining extends StatefulWidget {
  const HomePageSkillTraining({super.key});

  @override
  State<HomePageSkillTraining> createState() => _HomePageSkillTrainingState();
}

class _HomePageSkillTrainingState extends State<HomePageSkillTraining> {
  @override
  Widget build(BuildContext context) {
    List<HomePageTrainingContentString> homePageTrainingContentString =
        HomePageTrainingContentString.homePageTrainingContentString;

    return StreamBuilder<List<SkillTraining>>(
      stream: SkillTrainingFirestoreDatabaseService().getAllSkillTopics(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingDialog();
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        } else if (snapshot.hasData) {
          final topics = snapshot.data!;

          return GridView.builder(
            shrinkWrap: true,
            clipBehavior: Clip.none,
            physics: const NeverScrollableScrollPhysics(),
            //* Chi render 4 part dau tien
            itemCount: homePageTrainingContentString.length - 3,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 500,
              mainAxisExtent: 350,
              mainAxisSpacing: 5,
              crossAxisSpacing: 20,
              childAspectRatio: 3 / 2,
            ),
            itemBuilder: (
              context,
              index,
            ) {
              return AppVerticalCard(
                elevation: 10,
                button: AppButton(
                  layout: AppButtonType.floatingActionButton,
                  buttonTitle: Text(
                    'Start',
                    style: AppTextStyle.bungeeHairline15,
                  ),
                  buttonColor: AppColors.pinkColor,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => TrainingQuizView(
                          topic: topics[index],
                        ),
                      ),
                    );
                  },
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                title: Text(
                  homePageTrainingContentString[index].title,
                  style: AppTextStyle.bungee15,
                ),
                description: Text(
                  homePageTrainingContentString[index].description,
                  style: AppTextStyle.robotoMono15,
                ),
                image: Image.asset(
                  homePageTrainingContentString[index].image,
                  height: 200,
                  width: 400,
                ),
              );
            },
          );
        } else {
          return const Text('No topics found');
        }
      },
    );
  }
}
