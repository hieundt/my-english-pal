import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_horizontal_card.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/strings/community_view_string.dart';

class CommunityHeader extends StatelessWidget {
  const CommunityHeader({super.key});

  @override
  Widget build(BuildContext context) {
    CommunityHeaderString communityHeaderString =
        CommunityHeaderString.communityHeaderString;
    return AppHorizontalCard(
      layout: AppHorizontalCardType.IMAGEONTHERIGHT,
      color: AppColors.lightBlueColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      titleFontSize: 50,
      descriptionFontSize: 20,
      title: communityHeaderString.title,
      image: communityHeaderString.image,
      description: communityHeaderString.description,
    );
  }
}
