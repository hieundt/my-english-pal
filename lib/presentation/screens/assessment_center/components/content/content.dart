import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/assessment_center/components/content/data.dart';
import 'package:myenglishpal_web/presentation/screens/assessment_center/components/content/items.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AssessmentCenterContent extends StatelessWidget {
  const AssessmentCenterContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<AssessmentCenterContentData> assessmentCenterContentData =
        AssessmentCenterContentData.assessmentCenterContentData;
    return ResponsiveRowColumn(
      layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
          ? ResponsiveRowColumnType.COLUMN
          : ResponsiveRowColumnType.ROW,
      rowMainAxisAlignment: MainAxisAlignment.center,
      rowPadding: const EdgeInsets.all(30.0),
      columnPadding: const EdgeInsets.all(30.0),
      children: [
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: AssessmentCenterContentItem(
            assessmentCenterContentData: assessmentCenterContentData[0],
          ),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: AssessmentCenterContentItem(
            assessmentCenterContentData: assessmentCenterContentData[1],
          ),
        ),
      ],
    );
  }
}
