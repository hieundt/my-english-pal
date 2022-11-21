import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_horizontal_card.dart';

import 'package:myenglishpal_web/rsc/colors/app_colors.dart';

class SimulatorHeader extends StatelessWidget {
  const SimulatorHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppHorizontalCard(
      color: AppColors.lightBlueColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      layout: AppHorizontalCardType.IMAGEONTHERIGHT,
      title: 'TOEIC Exam Simulator',
      image: '',
    );
  }
}
