import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_horizontal_card.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/strings/community_view_string.dart';

class CommunityContent extends StatelessWidget {
  const CommunityContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<CommunityContentString> communityContentString =
        CommunityContentString.communityContentString;
    return Column(
      children: [
        AppHorizontalCard(
          layout: AppHorizontalCardType.IMAGEONTHELEFT,
          elevation: 0,
          color: AppColors.blueGreyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          titleFontSize: 20,
          descriptionFontSize: 10,
          imageHeight: 350,
          title: communityContentString[0].title,
          image: communityContentString[0].image,
          description: communityContentString[0].description,
          button: AppButton(
            layout: AppButtonType.OUTLINEDBUTTON,
            buttonText: 'Discover',
            onPressed: () {},
          ),
        ),
        AppHorizontalCard(
          layout: AppHorizontalCardType.IMAGEONTHELEFT,
          elevation: 0,
          color: AppColors.blueGreyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          titleFontSize: 30,
          descriptionFontSize: 10,
          imageHeight: 350,
          title: communityContentString[1].title,
          image: communityContentString[1].image,
          description: communityContentString[1].description,
          button: AppButton(
            layout: AppButtonType.OUTLINEDBUTTON,
            buttonText: 'Discover',
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
