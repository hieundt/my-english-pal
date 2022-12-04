import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_horizontal_card.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/strings/community_view_string.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

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
      title: Text(
        communityHeaderString.title,
        style: AppTextStyle.bungee70,
      ),
      image: Image.asset(
        communityHeaderString.image,
        height: 250,
        fit: BoxFit.cover,
      ),
      description: Text(
        communityHeaderString.description,
        style: AppTextStyle.robotoMono15,
      ),
    );
  }
}
