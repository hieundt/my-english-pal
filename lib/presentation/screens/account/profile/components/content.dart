import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/account/profile/components/achievements/achivement.dart';
import 'package:myenglishpal_web/presentation/screens/account/profile/components/statistical/day_streak.dart';
import 'package:myenglishpal_web/presentation/screens/account/profile/components/statistical/time_on_task.dart';

import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Text(
          'Statistical',
          style: AppTextStyle.bungee30,
        ),
        ResponsiveRowColumn(
          layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          rowMainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: ProgressDayStreak(),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: ProgressTimeOnTask(),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
          child: Divider(
            indent: 200,
            endIndent: 200,
            thickness: 2,
          ),
        ),
        Text(
          'Achievements',
          style: AppTextStyle.bungee30,
        ),
        const ProfileAchivement(),
        //const ProgressTaskCompletion(),
      ],
    );
  }
}
