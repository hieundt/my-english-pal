import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/strings/home_page_view_string.dart';
import 'package:myenglishpal_web/presentation/widgets/app_vertical_card.dart';

class HomePageTraining extends StatefulWidget {
  const HomePageTraining({super.key});

  @override
  State<HomePageTraining> createState() => _HomePageTrainingState();
}

class _HomePageTrainingState extends State<HomePageTraining> {
  @override
  Widget build(BuildContext context) {
    List<HomePageTrainingContentString> homePageContentString =
        HomePageTrainingContentString.homePageTrainingContentString;

    return GridView.builder(
      shrinkWrap: true,
      clipBehavior: Clip.none,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: homePageContentString.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 500,
        mainAxisExtent: 350,
        mainAxisSpacing: 5,
        crossAxisSpacing: 20,
        childAspectRatio: 3 / 2,
      ),
      itemBuilder: (context, index) {
        return Column(
          children: [
            AppVerticalCard(
              button: AppButton(
                layout: AppButtonType.ELEVATEDBUTTON,
                buttonText: 'Start',
                buttonColor: AppColors.lightPinkColor,
                onPressed: () {},
              ),
              imageHeight: 200,
              titleFontSize: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              title: homePageContentString[index].title,
              image: homePageContentString[index].image,
            ),
          ],
        );
      },
    );
  }
}
