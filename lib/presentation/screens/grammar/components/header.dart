import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_horizontal_card.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:responsive_framework/responsive_framework.dart';

class GrammarHeader extends StatelessWidget {
  const GrammarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppHorizontalCard(
      layout: AppHorizontalCardType.imageOnTheRight,
      color: AppColors.lightPinkColor,
      elevation: 10,
      //titleFontSize: 70,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      title: Text('Grammar Book'),
      image: Image.asset(
        GrammarImages.headerImage,
        height: ResponsiveValue(
          context,
          defaultValue: 300.0,
          valueWhen: [
            const Condition.smallerThan(
              name: TABLET,
              value: 200.0,
            ),
          ],
        ).value!,
      ),
      button: AppButton(
        layout: AppButtonType.textButton,
        onPressed: () {},
      ),
    );
  }
}
