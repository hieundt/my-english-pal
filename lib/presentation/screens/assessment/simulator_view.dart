import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/assessment/components/content.dart';
import 'package:myenglishpal_web/presentation/screens/assessment/components/header.dart';

class AssessmentView extends StatelessWidget {
  const AssessmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: const [
          AssessmentHeader(),
          AssessmentContent(),
        ],
      ),
    );
  }
}
