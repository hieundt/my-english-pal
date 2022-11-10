import 'package:flutter/material.dart';

class AssessmentCenterView extends StatefulWidget {
  const AssessmentCenterView({super.key});

  @override
  State<AssessmentCenterView> createState() => _AssessmentCenterViewState();
}

class _AssessmentCenterViewState extends State<AssessmentCenterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is assessment center'),
      ),
    );
  }
}
