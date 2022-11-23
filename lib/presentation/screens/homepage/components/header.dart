import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:myenglishpal_web/presentation/widgets/app_vertical_card.dart';
import 'package:myenglishpal_web/rsc/strings/home_page_view_string.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePageHeader extends StatefulWidget {
  const HomePageHeader({
    super.key,
  });

  @override
  State<HomePageHeader> createState() => _HomePageHeaderState();
}

class _HomePageHeaderState extends State<HomePageHeader> {
  List<HomePageHeaderString> homePageHeaderString =
      HomePageHeaderString.homePageHeaderString;

  List<Widget> buildHeaderItem() {
    return homePageHeaderString
        .map(
          (e) => AppVerticalCard(
            image: e.image,
            title: e.title,
            imageWidth: 600,
            imageHeight: 400,
            titleFontSize: 26,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: CarouselSlider(
              items: buildHeaderItem(),
              options: CarouselOptions(
                enableInfiniteScroll: false,
                autoPlay: true,
                initialPage: 0,
                disableCenter: true,
                aspectRatio: 16 / 9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
