import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/progress/components/content/average_score.dart';
import 'package:myenglishpal_web/presentation/screens/progress/components/content/task_completion.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';

class ProgressContent extends StatelessWidget {
  const ProgressContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.blackColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: const [
          ProgressAverageScore(),
          SizedBox(
            height: 50,
          ),
          ProgressTaskCompletion(),
        ],
      ),
    );
  }
}
