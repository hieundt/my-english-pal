import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/progress/components/content/content.dart';
import 'package:myenglishpal_web/presentation/screens/progress/components/header/header.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: const [
        SizedBox(
          height: 50,
        ),
        ProgressHeader(),
        ProgressContent(),
      ]),
    );
  }
}
