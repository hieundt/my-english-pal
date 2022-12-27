import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';

class VocabularySliderState with ChangeNotifier {
  double _progress = 0;

  final SwipableStackController controller = SwipableStackController();

  double get progress => _progress;

  set progress(double newValue) {
    _progress = newValue;
    notifyListeners();
  }

// duration: const Duration(milliseconds: 500),
//       curve: Curves.easeOut,

  nextCard() {
    controller.next(
      swipeDirection: SwipeDirection.right,
      duration: const Duration(milliseconds: 500),
    );
  }
}
