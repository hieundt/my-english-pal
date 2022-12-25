import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/data/model/skill_training/option/option.dart';
import 'package:myenglishpal_web/data/model/skill_training/quiz/quiz.dart';
import 'package:myenglishpal_web/data/model/skill_training/skill_training.dart';
import 'package:myenglishpal_web/data/services/firestore_database.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/content/training/training_quiz/training_quiz_state.dart';
import 'package:myenglishpal_web/presentation/widgets/app_animated_progress_bar.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_loading_dialog.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:provider/provider.dart';

class TrainingQuizView extends StatelessWidget {
  final SkillTraining topicId;
  const TrainingQuizView({
    super.key,
    required this.topicId,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TrainingQuizState(),
      child: StreamBuilder<SkillTraining>(
        stream: FirestoreDatabaseService().getSkillTopicsById(topicId.id),
        builder: (context, snapshot) {
          var state = Provider.of<TrainingQuizState>(context);
          if (!snapshot.hasData || snapshot.hasError) {
            return const LoadingDialog();
          } else {
            var topic = snapshot.data!;

            return Scaffold(
              appBar: AppBar(
                title: AppAnimatedProgressbar(value: state.progress),
                leading: IconButton(
                  icon: const Icon(CupertinoIcons.xmark),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              body: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                controller: state.controller,
                onPageChanged: (int idx) =>
                    state.progress = (idx / (topic.quizzes.length + 1)),
                itemBuilder: (BuildContext context, int idx) {
                  if (idx == 0) {
                    return TrainingTutorialView(topic: topic);
                  } else if (idx == topic.quizzes.length + 1) {
                    return TrainingCongratsView(topic: topic);
                  } else {
                    return TrainingQuizzesView(quiz: topic.quizzes[idx - 1]);
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

class TrainingTutorialView extends StatelessWidget {
  final SkillTraining topic;
  const TrainingTutorialView({
    super.key,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<TrainingQuizState>(context);

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(topic.tutorial),
          const Divider(),
          AppButton(
            layout: AppButtonType.floatingActionButton,
            onPressed: state.nextPage,
            buttonTitle: const Text('Start Quiz!'),
            buttonLeading: const Icon(Icons.poll),
          )
        ],
      ),
    );
  }
}

class TrainingCongratsView extends StatelessWidget {
  final SkillTraining topic;
  const TrainingCongratsView({
    super.key,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Congrats! You completed the ${topic.name} quiz',
            textAlign: TextAlign.center,
          ),
          const Divider(),
          Image.asset(
            AppLogo.myEnglishPalLogo,
            fit: BoxFit.cover,
            scale: 5,
          ),
          const Divider(),
          ElevatedButton.icon(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.darkGreenColor,
            ),
            icon: const Icon(CupertinoIcons.checkmark_circle),
            label: const Text(' Mark Complete!'),
            onPressed: () {
              //* FirestoreDatabaseService().updateUserReport(topic);
              Navigator.pushNamedAndRemoveUntil(
                context,
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

class TrainingQuizzesView extends StatelessWidget {
  final Quiz quiz;
  const TrainingQuizzesView({
    super.key,
    required this.quiz,
  });

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<TrainingQuizState>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
            //child: Image.network('${quiz.description}'),
            child: Image.network(
                "https://drive.google.com/uc?export=view&id=14KzqfS52Xy-CARNRZiDiCmeA9MNgVkcX"),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: quiz.options!.map(
              (opt) {
                return Container(
                  height: 90,
                  margin: const EdgeInsets.only(bottom: 10),
                  color: AppColors.lightBlueColor,
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
                                ? (opt.isCorrect == true
                                    ? CupertinoIcons.checkmark_circle_fill
                                    : CupertinoIcons.xmark_circle_fill)
                                : CupertinoIcons.circle,
                            size: 30,
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 16),
                              child: Text(
                                opt.value!,
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        )
      ],
    );
  }

  /// Bottom sheet shown when Question is answered
  _bottomSheet(BuildContext context, Option opt, TrainingQuizState state) {
    bool correct = opt.isCorrect!;

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
                opt.answer!,
                style: const TextStyle(
                  fontSize: 18,
                  color: AppColors.blackColor,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      correct ? AppColors.darkGreenColor : AppColors.redColor,
                ),
                child: Text(
                  correct ? 'Onward!' : 'Try Again',
                  style: const TextStyle(
                    color: AppColors.whiteColor,
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
