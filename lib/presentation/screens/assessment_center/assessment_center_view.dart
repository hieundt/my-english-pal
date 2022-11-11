import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/assessment_center/components/content/content.dart';
import 'package:myenglishpal_web/presentation/screens/assessment_center/components/header/header.dart';

class AssessmentCenterView extends StatelessWidget {
  const AssessmentCenterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          SizedBox(
            height: 100,
          ),
          AssessmentCenterHeader(),
          AssessmentCenterContent(),
        ],
      ),
    );
  }
}
