import 'package:flutter/cupertino.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';

class GrammarContentCardTitleString {
  static final grammarContentCardTitleString = [
    GrammarContentCardTitleString(
      cardTitle: 'Present Tense',
      cardTitleIcon: Image.asset(
        GrammarImages.contentPresentTenseIcon,
      ),
    ),
    GrammarContentCardTitleString(
      cardTitle: 'Future Tense',
      cardTitleIcon: Image.asset(
        GrammarImages.contentFutureTenseIcon,
      ),
    ),
    GrammarContentCardTitleString(
      cardTitle: 'Past Tense',
      cardTitleIcon: Image.asset(
        GrammarImages.contentPastTenseIcon,
      ),
    ),
  ];

  final String cardTitle;
  final Widget cardTitleIcon;

  GrammarContentCardTitleString({
    required this.cardTitleIcon,
    required this.cardTitle,
  });
}

// class GrammarContentCardItemString {
//   static final grammarContentCardItemString = [
//     GrammarContentCardItemString(
//       cardItemTitle: 'Simple Tense Form',
//       cardItemIcon: const Icon(
//         CupertinoIcons.chat_bubble_2,
//       ),
//     ),
//     GrammarContentCardItemString(
//       cardItemTitle: 'Continuous Tense Form',
//       cardItemIcon: const Icon(
//         CupertinoIcons.arrow_2_circlepath,
//       ),
//     ),
//     GrammarContentCardItemString(
//       cardItemTitle: 'Perfect Tense Form',
//       cardItemIcon: const Icon(
//         CupertinoIcons.checkmark,
//       ),
//     ),
//     GrammarContentCardItemString(
//       cardItemTitle: 'Perfect Continuous Tense Form',
//       cardItemIcon: const Icon(
//         CupertinoIcons.loop,
//       ),
//     ),
//   ];

//   final String cardItemTitle;
//   final Widget cardItemIcon;

//   GrammarContentCardItemString({
//     required this.cardItemIcon,
//     required this.cardItemTitle,
//   });
// }

class GrammarContentCardItemString {
  static final List<String> cardItemTitle = [
    'Simple Tense Form',
    'Continuous Tense Form',
    'Perfect Tense Form',
    'Perfect Continuous Tense Form',
  ];
  static final List<Widget> cardItemIcon = [
    const Icon(
      CupertinoIcons.chat_bubble_2,
    ),
    const Icon(
      CupertinoIcons.arrow_2_circlepath,
    ),
    const Icon(
      CupertinoIcons.checkmark,
    ),
    const Icon(
      CupertinoIcons.loop,
    ),
  ];
}
