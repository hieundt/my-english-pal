import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/content/data.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/content/items.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePageReadingContent extends StatelessWidget {
  const HomePageReadingContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<HomePageContentData> homePageContentData =
        HomePageContentData.homePageContentData;
    return ResponsiveRowColumn(
      layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
          ? ResponsiveRowColumnType.COLUMN
          : ResponsiveRowColumnType.ROW,
      rowMainAxisAlignment: MainAxisAlignment.center,
      rowPadding: const EdgeInsets.all(30.0),
      columnPadding: const EdgeInsets.all(30.0),
      children: [
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: HomePageContentItem(
            homePageContentData: homePageContentData[4],
          ),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: HomePageContentItem(
            homePageContentData: homePageContentData[5],
          ),
        ),
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: HomePageContentItem(
            homePageContentData: homePageContentData[6],
          ),
        ),
      ],
    );
  }
}
