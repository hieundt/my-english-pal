import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_horizontal_card.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';

class GrammarHeader extends StatelessWidget {
  const GrammarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppHorizontalCard(
      layout: AppHorizontalCardType.IMAGEONTHERIGHT,
      color: AppColors.lightPinkColor,
      elevation: 100,
      titleFontSize: 100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      title: 'Grammar Book',
      image: GrammarImages.headerImage,
    );
  }
}
