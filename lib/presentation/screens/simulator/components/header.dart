import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_horizontal_card.dart';

import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SimulatorHeader extends StatelessWidget {
  const SimulatorHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppHorizontalCard(
      color: AppColors.lightPinkColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 10,
      titleFontSize: 70,
      layout: AppHorizontalCardType.IMAGEONTHERIGHT,
      title: 'Exam Simulator',
      image: Image.asset(
        SimulatorImages.headerImage,
        height: ResponsiveValue(
          context,
          defaultValue: 300.0,
          valueWhen: [
            const Condition.smallerThan(
              name: TABLET,
              value: 200.0,
            ),
          ],
        ).value!,
      ),
      button: AppButton(
        layout: AppButtonType.TEXTBUTTON,
        buttonText: '',
        onPressed: () {},
      ),
    );
  }
}
