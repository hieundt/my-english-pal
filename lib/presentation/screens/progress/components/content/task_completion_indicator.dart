import 'package:flutter/material.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProgressTaskCompletionIndicator extends StatelessWidget {
  const ProgressTaskCompletionIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: LinearPercentIndicator(
        width: ResponsiveValue(
          context,
          defaultValue: 500.0,
          valueWhen: [
            Condition.smallerThan(name: TABLET, value: 300.0),
          ],
        ).value,
        lineHeight: 30,
        barRadius: const Radius.circular(30),
        percent: 60 / 100,
        animation: true,
        animationDuration: 1500,
        progressColor: AppColors.lightPinkColor,
        leading: const Text('Task Complettion'),
        alignment: MainAxisAlignment.center,
      ),
    );
  }
}
