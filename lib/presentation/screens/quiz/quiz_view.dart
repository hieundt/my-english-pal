import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/data/model/quizz/quiz_models.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';

class QuizView extends StatefulWidget {
  const QuizView({super.key});

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  int _score = 0;
  bool _isLocked = false;
  int _questionNumber = 1;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  Column buildQuestion(Question question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        question.title,
        question.description,
        const SizedBox(height: 30),
        Expanded(
          child: OptionWidget(
            question: question,
            onClickedOption: (option) {
              if (question.isLocked) {
                return;
              } else {
                setState(() {
                  question.isLocked = true;
                  question.selectedOption = option;
                });
                _isLocked = question.isLocked;
                if (question.selectedOption!.isCorrect) {
                  _score++;
                }
              }
            },
          ),
        ),
      ],
    );
  }

  AppButton buildButton() {
    return AppButton(
      layout: AppButtonType.floatingActionButton,
      onPressed: () {
        if (_questionNumber < questions.length) {
          _controller.nextPage(
            duration: const Duration(microseconds: 300),
            curve: Curves.easeInExpo,
          );
          setState(() {
            _questionNumber++;
            _isLocked = false;
          });
        } else {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => ResultPage(score: _score),
            ),
          );
        }
      },
      buttonTitle: Text(
        _questionNumber < questions.length ? 'Next page' : 'See the result',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text('Question $_questionNumber/${questions.length}'),
            const Divider(
              thickness: 1,
              color: AppColors.blackColor,
            ),
            Expanded(
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: _controller,
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  final question = questions[index];
                  return buildQuestion(question);
                },
              ),
            ),
            _isLocked ? buildButton() : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

class OptionWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;
  const OptionWidget({
    super.key,
    required this.question,
    required this.onClickedOption,
  });

  Color getColorForOption(
    Option option,
    Question question,
  ) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked && isSelected) {
      //if (isSelected) {
      return option.isCorrect ? AppColors.darkGreenColor : AppColors.redColor;
      //}
    } else if (option.isCorrect) {
      return AppColors.darkGreenColor;
    }
    return AppColors.lightGreyColor;
  }

  Widget buildOption(
    BuildContext context,
    Option option,
  ) {
    final color = getColorForOption(
      option,
      question,
    );

    Widget getIconForOption(
      Option option,
      Question question,
    ) {
      final isSelected = option == question.selectedOption;
      if (question.isLocked && isSelected) {
        {
          return option.isCorrect
              ? const Icon(
                  CupertinoIcons.check_mark_circled_solid,
                  color: AppColors.darkGreenColor,
                )
              : const Icon(
                  CupertinoIcons.clear_circled_solid,
                  color: AppColors.redColor,
                );
        }
      } else if (option.isCorrect) {
        return const Icon(
          CupertinoIcons.check_mark_circled_solid,
          color: AppColors.darkGreenColor,
        );
      }
      return const SizedBox.shrink();
    }

    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.lightGreyColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: color),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(option.text),
            getIconForOption(
              option,
              question,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: question.options
          .map(
            (option) => buildOption(
              context,
              option,
            ),
          )
          .toList(),
    );
  }
}

class ResultPage extends StatelessWidget {
  final int score;
  const ResultPage({
    super.key,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('You got $score/${questions.length}'),
          AppButton(
            layout: AppButtonType.floatingActionButton,
            buttonTitle: Text('Back to home page'),
            onPressed: () {
              Navigator.of(context)
                  .pushReplacementNamed(navigateControllerRoute);
            },
          )
        ],
      ),
    );
  }
}
