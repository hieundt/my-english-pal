import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/data/model/vocabulary_topic/vocabulary_topic.dart';
import 'package:myenglishpal_web/presentation/widgets/app_vertical_card.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:swipable_stack/swipable_stack.dart';

const _images = [
  HomePageImages.buisinessImages,
  HomePageImages.dinningoutImages,
  HomePageImages.headerImages,
];

class VocabularySlider extends StatefulWidget {
  const VocabularySlider({super.key});

  @override
  _VocabularySliderState createState() => _VocabularySliderState();
}

class _VocabularySliderState extends State<VocabularySlider> {
  late final SwipableStackController _controller;

  void _listenController() => setState(() {});

  @override
  void initState() {
    super.initState();
    _controller = SwipableStackController()..addListener(_listenController);
  }

  @override
  void dispose() {
    super.dispose();
    _controller
      ..removeListener(_listenController)
      ..dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: AppAnimatedProgressbar(value: state.progress),
        leading: IconButton(
          icon: const Icon(CupertinoIcons.xmark),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SwipableStack(
            // itemCount: _images.length,
            detectableSwipeDirections: const {
              SwipeDirection.right,
              SwipeDirection.left,
            },
            controller: _controller,
            stackClipBehaviour: Clip.none,
            onSwipeCompleted: (index, direction) {},
            horizontalSwipeThreshold: 0.8,
            verticalSwipeThreshold: 0.8,
            builder: (context, properties) {
              //final itemIndex = properties.index % _images.length;
              return Card(
                child: AppVerticalCard(
                  cardHeight: 300,
                  color: AppColors.lightGreenColor,
                  title: Text(
                    'Access to the Internet',
                    style: AppTextStyle.bungee50,
                  ),
                  description: Text(
                    'Able to connect to the Internet',
                    style: AppTextStyle.robotoMono30,
                  ),
                ),
              );
            },
          ),
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
