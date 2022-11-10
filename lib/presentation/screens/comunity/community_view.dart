import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/comunity/components/content/data.dart';
import 'package:myenglishpal_web/presentation/screens/comunity/components/content/content.dart';
import 'package:myenglishpal_web/presentation/screens/comunity/components/header/data.dart';
import 'package:myenglishpal_web/presentation/screens/comunity/components/header/header.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CommunityContentData> communityContentData =
        CommunityContentData.communityContentData;
    CommunityHeaderData headerItems = CommunityHeaderData.communityHeaderData;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: [
          Center(
            child: CommunityHeader(
              communityHeaderData: headerItems,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              CommunityContent(
                communityContentData: communityContentData[0],
              ),
              const SizedBox(
                height: 30.0,
              ),
              CommunityContent(
                communityContentData: communityContentData[1],
              ),
            ],
          )
        ],
      ),
    );
  }
}
