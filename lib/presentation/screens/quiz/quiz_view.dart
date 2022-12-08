import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/data/model/quizz/quiz_models.dart';
import 'package:myenglishpal_web/data/services/firestore_database.dart';
import 'package:myenglishpal_web/presentation/screens/quiz/quiz_state.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_loading_dialog.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:provider/provider.dart';

class TutorialView extends StatelessWidget {
  const TutorialView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<QuizState>(context);

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Tutorial',
            style: AppTextStyle.robotoMono15,
          ),
          const Divider(),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              AppButton(
                layout: AppButtonType.floatingActionButton,
                onPressed: state.nextPage,
                buttonTitle: Text(
                  'Understood!',
                  style: AppTextStyle.bungeeHairline20,
                ),
                buttonLeading: const Icon(
                  CupertinoIcons.tortoise_fill,
                  color: AppColors.darkGreenColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class QuizView extends StatelessWidget {
  const QuizView({super.key, required this.quizId});
  final String quizId;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => QuizState(),
      child: FutureBuilder<Quiz>(
        future: FirestoreDatabaseService().getQuiz(quizId),
        builder: (context, snapshot) {
          var state = Provider.of<QuizState>(context);

          if (!snapshot.hasData || snapshot.hasError) {
            return const LoadingDialog();
          } else {
            var quiz = snapshot.data!;

            return Scaffold(
              appBar: AppBar(
                title: const Text('Progress'),
                // title: AnimatedProgressbar(value: state.progress),
                // leading: IconButton(
                //   icon: const Icon(FontAwesomeIcons.xmark),
                //   onPressed: () => Navigator.pop(context),
                // ),
              ),
              body: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                controller: state.controller,
                onPageChanged: (int idx) =>
                    state.progress = (idx / (5 /*quiz.questions.length + 1*/)),
                itemBuilder: (BuildContext context, int idx) {
                  if (idx == 0) {
                    return const TutorialView(); //StartPage(quiz: quiz);
                  } else if (idx == 5 /*quiz.questions.length + 1*/) {
                    return const CongratsView(); //quiz: quiz
                  } else {
                    return QuestionPage(question: quiz.questions[idx - 1]);
                  }
                },
              ),
            );
          }
        },
      ),
    );
  }
}

class QuestionPage extends StatelessWidget {
  final Quiz quiz;
  const QuestionPage({
    super.key,
    required this.quiz,
  });

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<QuizState>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
            child: Text(quiz.discription),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: quiz.options.map((opt) {
              return Container(
                height: 90,
                margin: const EdgeInsets.only(bottom: 10),
                color: Colors.black26,
                child: InkWell(
                  onTap: () {
                    state.selected = opt;
                    _bottomSheet(context, opt, state);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Icon(
                          state.selected == opt
                              ? CupertinoIcons.checkmark_circle
                              : CupertinoIcons.circle,
                          size: 30,
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 16),
                            child: Text(
                              opt.value,
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }

  /// Bottom sheet shown when Question is answered
  _bottomSheet(BuildContext context, Option opt, QuizState state) {
    bool correct = opt.isCorrect;

    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 250,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(correct ? 'Good Job!' : 'Wrong'),
              Text(
                opt.answers,
                style: const TextStyle(fontSize: 18, color: Colors.white54),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: correct ? Colors.green : Colors.red),
                child: Text(
                  correct ? 'Onward!' : 'Try Again',
                  style: const TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  if (correct) {
                    state.nextPage();
                  }
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class CongratsView extends StatelessWidget {
  // final Quiz quiz;
  const CongratsView({
    super.key,
  });
  //required this.quiz});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Congrats! You completed the quiz', //${quiz.title}
            textAlign: TextAlign.center,
          ),
          const Divider(),
          Image.asset(AppLogo.myEnglishPalLogo),
          const Divider(),
          AppButton(
            layout: AppButtonType.floatingActionButton,
            buttonLeading: const Icon(
              CupertinoIcons.tortoise_fill,
              color: AppColors.darkGreenColor,
            ),
            buttonTitle: Text(
              'Mark as completed',
              style: AppTextStyle.bungeeHairline20,
            ),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                navigateControllerRoute,
                (route) => false,
              );
            },
          )
        ],
      ),
    );
  }
}
