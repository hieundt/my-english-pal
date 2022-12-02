import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_vertical_card.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/strings/simulator_view_string.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SimulatorContent extends StatelessWidget {
  const SimulatorContent({super.key});

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
            imageWidth: 500,
            imageHeight: 300,
            color: AppColors.lightBlueColor,
            title: simulatorContentString[0].title,
            image: simulatorContentString[0].image,
            button: AppButton(
              layout: AppButtonType.ELEVATEDBUTTON,
              buttonText: 'Join test',
              onPressed: () {},
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: AppVerticalCard(
            button: AppButton(
              layout: AppButtonType.ELEVATEDBUTTON,
              buttonText: 'Join test',
              onPressed: () {},
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 10,
            imageWidth: 500,
            imageHeight: 300,
            color: AppColors.lightBlueColor,
            title: simulatorContentString[1].title,
            image: simulatorContentString[1].image,
          ),
        ),
      ],
    );
  }
}
