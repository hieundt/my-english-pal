import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/strings/home_page_view_string.dart';
import 'package:myenglishpal_web/presentation/widgets/app_vertical_card.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

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
      itemBuilder: (
        context,
        index,
      ) {
        return Column(
          children: [
            AppVerticalCard(
              elevation: 10,
              button: AppButton(
                layout: AppButtonType.floatingActionButton,
                buttonTitle: Text(
                  'Start',
                  style: AppTextStyle.bungeeHairline15,
                ),
                buttonColor: AppColors.pinkColor,
                onPressed: () {},
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              title: Text(
                homePageContentString[index].title,
                style: AppTextStyle.bungee15,
              ),
              description: Text(
                homePageContentString[index].description,
                style: AppTextStyle.robotoMono15,
              ),
              image: Image.asset(
                homePageContentString[index].image,
                height: 200,
                width: 400,
              ),
            ),
          ],
        );
      },
    );
  }
}
