import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';

class VocabularySliderState with ChangeNotifier {
  double _progress = 0;

  final pageController = PageController();

  final swipeController = SwipableStackController();

  double get progress => _progress;

  set progress(double newValue) {
    _progress = newValue;
    notifyListeners();
  }

  void nextPage() async {
    await pageController.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }
}
