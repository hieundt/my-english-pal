import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/quiz/quiz_view.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_vertical_card.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/strings/simulator_view_string.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AssessmentContent extends StatelessWidget {
  const AssessmentContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<SimulatorContentString> simulatorContentString =
        SimulatorContentString.simulatorContentString;
    return ResponsiveRowColumn(
      layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
          ? ResponsiveRowColumnType.COLUMN
          : ResponsiveRowColumnType.ROW,
      rowPadding: const EdgeInsets.all(20),
      columnPadding: const EdgeInsets.all(20),
      children: [
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: AppVerticalCard(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 10,
            color: AppColors.lightBlueColor,
            title: Text(
              simulatorContentString[0].title,
              style: AppTextStyle.robotoMono30,
            ),
            image: Image.asset(
              simulatorContentString[0].image,
              width: 500,
              height: 300,
            ),
            button: AppButton(
              layout: AppButtonType.floatingActionButton,
              buttonTitle: Text(
                'Start',
                style: AppTextStyle.bungeeHairline15,
              ),
              onPressed: () {},
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: AppVerticalCard(
            button: AppButton(
              layout: AppButtonType.floatingActionButton,
              buttonTitle: Text(
                'Start',
                style: AppTextStyle.bungeeHairline15,
              ),
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  quizRoute,
                  (route) => false,
                );
              },
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 10,
            color: AppColors.lightBlueColor,
            title: Text(
              simulatorContentString[1].title,
              style: AppTextStyle.robotoMono30,
            ),
            image: Image.asset(
              simulatorContentString[1].image,
              width: 500,
              height: 300,
            ),
          ),
        ),
      ],
    );
  }
}
