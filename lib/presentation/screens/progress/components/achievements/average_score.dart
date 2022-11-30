import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_linnear_indicator.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';

class ProgressAverageScore extends StatelessWidget {
  const ProgressAverageScore({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLinnearIndicator(
      title: 'Average score',
      icon: CupertinoIcons.doc_checkmark_fill,
      leadingColor: AppColors.greenColor,
      iconColor: AppColors.darkGreenColor,
    );
  }
}
