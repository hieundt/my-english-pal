import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/data/model/vocabulary_topic/vocabulary/vocabulary.dart';
import 'package:myenglishpal_web/data/model/vocabulary_topic/vocabulary_topic.dart';
import 'package:myenglishpal_web/data/services/firestore_database.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/content/vocabulary/vocabulary_slider/vocabulary_slider_state.dart';
import 'package:myenglishpal_web/presentation/widgets/app_animated_progress_bar.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_loading_dialog.dart';
import 'package:myenglishpal_web/presentation/widgets/app_vertical_card.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:provider/provider.dart';
import 'package:swipable_stack/swipable_stack.dart';

class VocabularyLearn extends StatelessWidget {
  final VocabularyTopic topic;
  const VocabularyLearn({
    super.key,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => VocabularySliderState(),
      child: StreamBuilder<VocabularyTopic>(
        stream: VocabularyFirestoreDatabaseService()
            .getVocabularyTopicsById(topic.id!),
        builder: (context, snapshot) {
          var state = Provider.of<VocabularySliderState>(context);
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
                controller: state.pageController,
                onPageChanged: (int idx) => state.progress,
                itemBuilder: (BuildContext context, int idx) {
                  if (idx == 0) {
                    return VocabularyStartView(topic: topic);
                  } else if (idx == topic.vocabularies!.length + 1) {
                    return VocabularyCongratsView(topic: topic);
                  } else {
                    return VocabularySliderView(vocabularyList: topic);
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

class VocabularyStartView extends StatelessWidget {
  final VocabularyTopic topic;
  const VocabularyStartView({
    super.key,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<VocabularySliderState>(context);

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Divider(),
          AppButton(
            layout: AppButtonType.floatingActionButton,
            onPressed: state.nextPage,
            buttonTitle: const Text('Start learning!'),
            buttonLeading: const Icon(Icons.poll),
          )
        ],
      ),
    );
  }
}

class VocabularyCongratsView extends StatelessWidget {
  final VocabularyTopic topic;
  const VocabularyCongratsView({
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
            'Congrats! You\'ve learn some new ${topic.name} vocabylaries',
            textAlign: TextAlign.center,
          ),
          const Divider(),
          Image.asset(
            AppLogo.myEnglishPalLogo,
            fit: BoxFit.cover,
            scale: 2,
          ),
          const Divider(),
          ElevatedButton.icon(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.darkGreenColor,
            ),
            icon: const Icon(CupertinoIcons.checkmark_circle),
            label: const Text('Mark Complete!'),
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

class VocabularySliderView extends StatelessWidget {
  final VocabularyTopic vocabularyList;
  const VocabularySliderView({
    super.key,
    required this.vocabularyList,
  });

  @override
  Widget build(BuildContext context) {
    final controler = SwipableStackController();
    var state = Provider.of<VocabularySliderState>(context);
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: SwipableStack(
            controller: controler,
            itemCount: vocabularyList.vocabularies!.length,
            builder: (context, swipeProperty) {
              final itemIndex =
                  swipeProperty.index % vocabularyList.vocabularies!.length;
              state.progress = itemIndex.toDouble();
              return Center(
                child: AppVerticalCard(
                  cardHeight: 500,
                  cardWidth: 500,
                  elevation: 10,
                  color: AppColors.lightBlueColor,
                  title: Text(
                    vocabularyList.vocabularies![swipeProperty.index].text!,
                    style: AppTextStyle.bungee30,
                  ),
                  description: Text(
                    vocabularyList.vocabularies![swipeProperty.index].meaning!,
                    style: AppTextStyle.robotoMono15,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              );
            },
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: AppButton(
            layout: AppButtonType.floatingActionButton,
            buttonTitle: const Text('Rewind'),
            buttonLeading: const Icon(CupertinoIcons.backward),
            onPressed: () => controler.rewind(),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: AppButton(
            layout: AppButtonType.floatingActionButton,
            buttonTitle: const Text('Reset'),
            buttonLeading: const Icon(CupertinoIcons.repeat),
            onPressed: () => controler.currentIndex = 0,
          ),
        ),
      ],
    );
  }
}
