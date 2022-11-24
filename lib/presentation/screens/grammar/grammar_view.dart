import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/grammar/components/content.dart';
import 'package:myenglishpal_web/presentation/screens/grammar/components/header.dart';

class GrammarView extends StatelessWidget {
  const GrammarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          GrammarHeader(),
          GrammarContent(),
        ],
      ),
    );
  }
}
