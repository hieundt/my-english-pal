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
            imageWidth: ResponsiveValue(
              context,
              defaultValue: 600.0,
              valueWhen: [
                const Condition.equals(
                  name: MOBILE,
                  value: 130.0,
                ),
                const Condition.equals(
                  name: TABLET,
                  value: 300.0,
                ),
              ],
            ).value,
            imageHeight: ResponsiveValue(
              context,
              defaultValue: 600.0,
              valueWhen: [
                const Condition.smallerThan(
                  name: MOBILE,
                  value: 140.0,
                ),
                const Condition.equals(
                  name: MOBILE,
                  value: 230.0,
                ),
                const Condition.largerThan(
                  name: MOBILE,
                  value: 250.0,
                ),
                const Condition.smallerThan(
                  name: TABLET,
                  value: 250.0,
                ),
              ],
            ).value,
            titleFontSize: ResponsiveValue(
              context,
              defaultValue: 26.0,
              valueWhen: [
                const Condition.smallerThan(
                  name: DESKTOP,
                  value: 20.0,
                ),
                const Condition.smallerThan(
                  name: TABLET,
                  value: 15.0,
                ),
                const Condition.smallerThan(
                  name: MOBILE,
                  value: 10.0,
                ),
              ],
            ).value,
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
