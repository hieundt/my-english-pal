import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProgressTaskCompletionIndicator extends StatelessWidget {
  const ProgressTaskCompletionIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: LinearPercentIndicator(
        width: 200,
        lineHeight: 15,
        percent: 60 / 100,
        animation: true,
        animationDuration: 1500,
        progressColor: Colors.lightBlue[100],
        leading: const Text('Task Complettion'),
        alignment: MainAxisAlignment.center,
      ),
    );
  }
}
