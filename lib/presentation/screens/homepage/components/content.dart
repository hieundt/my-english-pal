import 'package:flutter/material.dart';
import 'package:myenglishpal_web/rsc/strings/home_page_view_string.dart';
import 'package:myenglishpal_web/presentation/widgets/app_vertical_card.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<HomePageContentString> homePageContentString =
        HomePageContentString.homePageContentString;
    return ResponsiveGridView.builder(
      shrinkWrap: true,
      clipBehavior: Clip.none,
      alignment: ResponsiveWrapper.of(context).isLargerThan(TABLET)
          ? Alignment.center
          : Alignment.topCenter,
      itemCount: homePageContentString.length,
      gridDelegate: const ResponsiveGridDelegate(
        crossAxisExtent: 230,
        mainAxisSpacing: 50,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Column(children: [
          AppVerticalCard(
            imageHeight: 135,
            titleFontSize: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            title: homePageContentString[index].title,
            image: homePageContentString[index].image,
          ),
        ]);
      },
    );
  }
}
