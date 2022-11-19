import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/simulator/components/content/data.dart';
import 'package:myenglishpal_web/presentation/screens/simulator/components/content/hard/items.dart';
import 'package:myenglishpal_web/presentation/screens/simulator/components/content/normal/items.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SimulatorContent extends StatelessWidget {
  const SimulatorContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<SimulatorContentData> assessmentCenterContentData =
        SimulatorContentData.assessmentCenterContentData;
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
          child: SimulatorContentNormalItem(
            assessmentCenterContentData: assessmentCenterContentData[0],
          ),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: SimulatorContentHardItem(
            assessmentCenterContentData: assessmentCenterContentData[1],
          ),
        ),
      ],
    );
  }
}
