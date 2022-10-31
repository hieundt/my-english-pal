import 'package:flutter/material.dart';

class ComunityView extends StatefulWidget {
  const ComunityView({super.key});

  @override
  State<ComunityView> createState() => _ComunityViewState();
}

class _ComunityViewState extends State<ComunityView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is comunity page'),
      ),
    );
  }
}
