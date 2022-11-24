import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProgressTaskCompletion extends StatelessWidget {
  const ProgressTaskCompletion({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: LinearPercentIndicator(
        width: ResponsiveValue(
          context,
          defaultValue: 500.0,
          valueWhen: [
            const Condition.smallerThan(
              name: TABLET,
              value: 260.0,
            ),
          ],
        ).value,
        lineHeight: 30,
        barRadius: const Radius.circular(30),
        percent: 60 / 100,
        animation: true,
        animationDuration: 1500,
        progressColor: AppColors.lightPinkColor,
        leading: SizedBox(
          child: Card(
            color: AppColors.lightPinkColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: const [
                Icon(CupertinoIcons.add_circled),
                Text('Task completion'),
              ],
            ),
          ),
        ),
        alignment: MainAxisAlignment.center,
      ),
    );
  }
}
