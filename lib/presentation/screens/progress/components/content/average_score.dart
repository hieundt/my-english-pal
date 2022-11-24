import 'package:flutter/material.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressAverageScore extends StatelessWidget {
  const ProgressAverageScore({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CircularPercentIndicator(
        radius: 100,
        lineWidth: 30,
        percent: 60 / 100,
        animation: true,
        animationDuration: 1500,
        center: const Text('60%'),
        progressColor: AppColors.lightPinkColor,
        footer: const Text('Average Test Score'),
      ),
    );
  }
}
