import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/simulator/components/content.dart';
import 'package:myenglishpal_web/presentation/screens/simulator/components/header.dart';

class SimulatorView extends StatelessWidget {
  const SimulatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: const [
          SimulatorHeader(),
          SimulatorContent(),
        ],
      ),
    );
  }
}
