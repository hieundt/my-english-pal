import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProfileAchivement extends StatelessWidget {
  const ProfileAchivement({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 2,
        separatorBuilder: (
          context,
          index,
        ) =>
            const SizedBox(
          height: 10,
        ),
        itemBuilder: (
          context,
          index,
        ) =>
            ListTile(
          leading: const Icon(
            CupertinoIcons.doc_chart_fill,
          ),
          title: LinearPercentIndicator(
            barRadius: const Radius.circular(
              30,
            ),
            progressColor: AppColors.lightPinkColor,
            animation: true,
            lineHeight: 30,
            width: MediaQuery.of(context).size.width / 2,
            percent: 100 / 100,
          ),
          subtitle: Text(
            'Average score',
            style: AppTextStyle.bungee15,
          ),
        ),
      ),
    );
  }
}
