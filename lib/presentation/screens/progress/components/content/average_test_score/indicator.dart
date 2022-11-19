import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressAverageTestScoreIndicator extends StatelessWidget {
  const ProgressAverageTestScoreIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CircularPercentIndicator(
        radius: 120,
        lineWidth: 15,
        percent: 60 / 100,
        animation: true,
        animationDuration: 1500,
        center: const Text('60%'),
        progressColor: Colors.lightBlue[100],
        footer: const Text('Average Test Score'),
      ),
    );
  }
}
