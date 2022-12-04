import 'package:flutter/cupertino.dart';

//! Mock data
final questions = [
  Question(
    title: Text('Audio 1'),
    description: Text('Why does the woman require the man’s approval?'),
    options: [
      Option(
        text: 'She needs to conduct an analysis.',
        isCorrect: true,
      ),
      Option(
        text: 'She plans to post a memo.',
        isCorrect: false,
      ),
      Option(
        text: 'She wants to submit another offer.',
        isCorrect: false,
      ),
      Option(
        text: 'She wishes to agree to a deal.',
        isCorrect: false,
      ),
    ],
  ),
  Question(
    title: Text('Audio 2'),
    description: Text('Why does the woman require the man’s approval?'),
    options: [
      Option(
        text: 'She needs to conduct an analysis.',
        isCorrect: false,
      ),
      Option(
        text: 'She plans to post a memo.',
        isCorrect: true,
      ),
      Option(
        text: 'She wants to submit another offer.',
        isCorrect: false,
      ),
      Option(
        text: 'She wishes to agree to a deal.',
        isCorrect: false,
      ),
    ],
  ),
  Question(
    title: Text('Audio 3'),
    description: Text('Why does the woman require the man’s approval?'),
    options: [
      Option(
        text: 'She needs to conduct an analysis.',
        isCorrect: false,
      ),
      Option(
        text: 'She plans to post a memo.',
        isCorrect: false,
      ),
      Option(
        text: 'She wants to submit another offer.',
        isCorrect: false,
      ),
      Option(
        text: 'She wishes to agree to a deal.',
        isCorrect: true,
      ),
    ],
  ),
];

class Question {
  final Widget title;
  final Widget description;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.title,
    required this.description,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool isCorrect;

  Option({
    required this.text,
    required this.isCorrect,
  });
}
