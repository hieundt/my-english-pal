import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_horizontal_card.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/strings/community_view_string.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CommunityHeader extends StatelessWidget {
  const CommunityHeader({super.key});

  @override
  Widget build(BuildContext context) {
    CommunityHeaderString communityHeaderString =
        CommunityHeaderString.communityHeaderString;
    return AppHorizontalCard(
      elevation: 10,
      layout: AppHorizontalCardType.imageOnTheRight,
      color: AppColors.lightBlueColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      //titleFontSize: 50,
      //descriptionFontSize: 20,
      title: Text(communityHeaderString.title),
      image: Image.asset(
        communityHeaderString.image,
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
      description: Text(communityHeaderString.description),
      button: AppButton(
        layout: AppButtonType.textButton,
        onPressed: () {},
      ),
    );
  }
}
