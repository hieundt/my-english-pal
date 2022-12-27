import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:myenglishpal_web/data/model/vocabulary_topic/vocabulary_topic.dart';
import 'package:myenglishpal_web/data/services/firestore_database.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/app_scroll_behavior.dart';
import 'package:myenglishpal_web/presentation/widgets/app_loading_dialog.dart';
import 'package:myenglishpal_web/presentation/widgets/app_vertical_card.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/strings/home_page_view_string.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePageVocabulary extends StatelessWidget {
  const HomePageVocabulary({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    List<HomePageVocabularyContentString> homePageVocabularyString =
        HomePageVocabularyContentString.homePageVocabularyString;
    return SizedBox(
        height: ResponsiveValue(
          context,
          defaultValue: 400.0,
          valueWhen: const [
            Condition.smallerThan(
              name: DESKTOP,
              value: 400.0,
            ),
            Condition.smallerThan(
              name: TABLET,
              value: 350.0,
            ),
          ],
        ).value!,
        child: StreamBuilder<List<VocabularyTopic>>(
          stream: VocabularyFirestoreDatabaseService().getAllVocabularyTopics(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Text(
                  'Loading...',
                  style: AppTextStyle.bungee50,
                ),
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else if (snapshot.hasData) {
              final topics = snapshot.data!;
              return ScrollConfiguration(
                behavior: AppScrollBehavior(),
                child: ListView.separated(
                  shrinkWrap: true,
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: homePageVocabularyString.length,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemBuilder: (context, index) => AppVerticalCard(
                    elevation: 30,
                    button: AppButton(
                      layout: AppButtonType.floatingActionButton,
                      buttonTitle: Text(
                        'Learn',
                        style: AppTextStyle.bungeeHairline15,
                      ),
                      buttonColor: AppColors.pinkColor,
                      onPressed: () {
                        log(topics[index].name.toString());
                      },
                    ),
                    image: Image.asset(
                      homePageVocabularyString[index].image,
                      width: 300,
                      height: 200,
                    ),
                    title: Text(
                      homePageVocabularyString[index].title,
                      style: AppTextStyle.bungee20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              );
            } else {
              return const Text('No topics found');
            }
          },
        ));
  }
}
