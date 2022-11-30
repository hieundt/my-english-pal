import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/progress/components/achievements/average_score.dart';
import 'package:myenglishpal_web/presentation/screens/progress/components/achievements/task_completion.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

class ProgressContent extends StatelessWidget {
  const ProgressContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 35,
          child: Text(
            'Statistical',
            style: ralewayStyle.copyWith(
              fontSize: 30,
              color: AppColors.greyTextColor,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        SizedBox(
          height: 35,
          child: Text(
            'Achievements',
            style: ralewayStyle.copyWith(
              fontSize: 30,
              color: AppColors.greyTextColor,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const ProgressAverageScore(),
        const ProgressTaskCompletion(),
      ],
    );
  }
}
