import 'package:flutter/cupertino.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_horizontal_card.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';

class ProgressTimeOnTask extends StatelessWidget {
  const ProgressTimeOnTask({super.key});

  @override
  Widget build(BuildContext context) {
    return AppHorizontalCard(
      elevation: 10,
      cardWidth: 250,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      layout: AppHorizontalCardType.imageOnTheLeft,
      title: Text('11:11'),
      description: Text('Time on task'),
      image: const Icon(
        CupertinoIcons.hourglass,
        color: AppColors.brownColor,
      ),
      button: AppButton(
        layout: AppButtonType.textButton,
        onPressed: () {},
      ),
    );
  }
}
