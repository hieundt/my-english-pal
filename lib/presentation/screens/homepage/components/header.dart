import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/app_scroll_behavior.dart';
import 'package:myenglishpal_web/presentation/widgets/app_vertical_card.dart';
import 'package:myenglishpal_web/rsc/strings/home_page_view_string.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    List<HomePageHeaderString> homePageHeaderString =
        HomePageHeaderString.homePageHeaderString;
    return SizedBox(
      height: MediaQuery.of(context).size.height /
          ResponsiveValue(
            context,
            defaultValue: 1.3,
            valueWhen: const [
              Condition.smallerThan(
                name: DESKTOP,
                value: 2.0,
              ),
              Condition.smallerThan(
                name: TABLET,
                value: 2.0,
              ),
            ],
          ).value!,
      child: ScrollConfiguration(
        behavior: AppScrollBehavior(),
        child: ListView.separated(
          shrinkWrap: true,
          controller: controller,
          scrollDirection: Axis.horizontal,
          itemCount: homePageHeaderString.length,
          separatorBuilder: (context, index) => const SizedBox(
            width: 10,
          ),
          itemBuilder: (context, index) => AppVerticalCard(
            button: AppButton(
              layout: AppButtonType.TEXTBUTTON,
              buttonText: '',
              onPressed: () {},
            ),
            image: homePageHeaderString[index].image,
            title: homePageHeaderString[index].title,
            imageWidth: ResponsiveValue(
              context,
              defaultValue: 600.0,
              valueWhen: const [
                Condition.smallerThan(
                  name: DESKTOP,
                  value: 350.0,
                ),
                Condition.smallerThan(
                  name: TABLET,
                  value: 300.0,
                ),
              ],
            ).value!,
            imageHeight: ResponsiveValue(
              context,
              defaultValue: 350.0,
              valueWhen: const [
                Condition.smallerThan(
                  name: DESKTOP,
                  value: 160.0,
                ),
                Condition.smallerThan(
                  name: MOBILE,
                  value: 260.0,
                ),
              ],
            ).value!,
            titleFontSize: 15,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
