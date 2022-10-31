import 'package:flutter/material.dart';

class GrammarBookView extends StatefulWidget {
  const GrammarBookView({super.key});

  @override
  State<GrammarBookView> createState() => _GrammarBookViewState();
}

class _GrammarBookViewState extends State<GrammarBookView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is grammar book'),
      ),
    );
  }
}
