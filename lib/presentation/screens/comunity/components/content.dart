import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_horizontal_card.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/strings/community_view_string.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

class CommunityContent extends StatelessWidget {
  const CommunityContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<CommunityContentString> communityContentString =
        CommunityContentString.communityContentString;
    return Column(
      children: [
        AppHorizontalCard(
          layout: AppHorizontalCardType.imageOnTheLeft,
          elevation: 10,
          color: AppColors.blueGreyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          title: Text(communityContentString[0].title),
          image: Image.asset(
            communityContentString[0].image,
            height: 300,
            width: 500,
          ),
          description: Text(communityContentString[0].description),
          button: AppButton(
            layout: AppButtonType.floatingActionButton,
            buttonTitle: Text(
              'Discover',
              style: AppTextStyle.appButtonText,
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        AppHorizontalCard(
          layout: AppHorizontalCardType.imageOnTheLeft,
          elevation: 10,
          color: AppColors.blueGreyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          title: Text(communityContentString[1].title),
          image: Image.asset(
            communityContentString[1].image,
            height: 300,
            width: 500,
          ),
          description: Text(communityContentString[1].description),
          button: AppButton(
            layout: AppButtonType.floatingActionButton,
            buttonTitle: Text(
              'Discover',
              style: AppTextStyle.appButtonText,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
