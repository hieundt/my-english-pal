import 'package:flutter/cupertino.dart';

import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_horizontal_card.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';

class ProgressDayStreak extends StatelessWidget {
  const ProgressDayStreak({super.key});

  @override
  Widget build(BuildContext context) {
    return AppHorizontalCard(
      elevation: 10,
      cardWidth: 250,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      layout: AppHorizontalCardType.imageOnTheLeft,
      title: Text('0'),
      description: Text('Day streak'),
      image: const Icon(
        CupertinoIcons.flame_fill,
        color: AppColors.deepOrangeColor,
      ),
      button: AppButton(
        layout: AppButtonType.textButton,
        onPressed: () {},
      ),
    );
  }
}
