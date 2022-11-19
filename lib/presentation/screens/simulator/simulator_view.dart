import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/simulator/components/content/content.dart';
import 'package:myenglishpal_web/presentation/screens/simulator/components/header/header.dart';

class SimulatorView extends StatelessWidget {
  const SimulatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          SizedBox(
            height: 100,
          ),
          SimulatorHeader(),
          SimulatorContent(),
        ],
      ),
    );
  }
}
