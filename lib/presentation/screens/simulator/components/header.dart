import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_horizontal_card.dart';

import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';

class SimulatorHeader extends StatelessWidget {
  const SimulatorHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppHorizontalCard(
      color: AppColors.lightPinkColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 100,
      titleFontSize: 100,
      layout: AppHorizontalCardType.IMAGEONTHERIGHT,
      title: 'Exam Simulator',
      image: SimulatorImages.headerImage,
    );
  }
}
