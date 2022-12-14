import 'package:flutter/material.dart';
import 'package:myenglishpal_web/data/model/skill_training/option/option.dart';

class TrainingQuizState with ChangeNotifier {
  double _progress = 0;
  Option? _selected;

  final controller = PageController();

  double get progress => _progress;
  Option? get selected => _selected;

  set progress(double newValue) {
    _progress = newValue;
    notifyListeners();
  }

  set selected(Option? newValue) {
    _selected = newValue;
    notifyListeners();
  }

  void nextPage() async {
    await controller.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }
}
