import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/progress/components/content/day_streak/day_streak.dart';
import 'package:myenglishpal_web/presentation/screens/progress/components/content/time_on_task/time_on_task.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProgressContent extends StatelessWidget {
  const ProgressContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.ROW,
      rowMainAxisAlignment: MainAxisAlignment.center,
      rowPadding: EdgeInsets.all(30.0),
      columnPadding: EdgeInsets.all(30.0),
      children: [
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: ProgressDayStreak(),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: ProgressTimeOnTask(),
        ),
      ],
    );
  }
}
