import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/app_scroll_behavior.dart';
import 'package:myenglishpal_web/presentation/widgets/app_vertical_card.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/strings/home_page_view_string.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePageVocabulary extends StatelessWidget {
  const HomePageVocabulary({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    List<HomePageVocabularyContentString> homePageVocabularyString =
        HomePageVocabularyContentString.homePageVocabularyString;
    return SizedBox(
      height: MediaQuery.of(context).size.height /
          ResponsiveValue(
            context,
            defaultValue: 1.5,
            valueWhen: const [
              Condition.smallerThan(
                name: DESKTOP,
                value: 1.5,
              ),
              Condition.smallerThan(
                name: TABLET,
                value: 2.0,
              ),
            ],
          ).value!,
      child: ScrollConfiguration(
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
            elevation: 10,
            button: AppButton(
              layout: AppButtonType.OUTLINEDBUTTON,
              buttonText: 'Learn',
              buttonColor: AppColors.pinkColor,
              onPressed: () {},
            ),
            image: homePageVocabularyString[index].image,
            title: homePageVocabularyString[index].title,
            imageWidth: 300,
            imageHeight: 200,
            titleFontSize: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
