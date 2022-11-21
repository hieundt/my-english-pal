import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_vertical_card.dart';
import 'package:myenglishpal_web/rsc/strings/simulator_view_string.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SimulatorContent extends StatelessWidget {
  const SimulatorContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<SimulatorContentString> simulatorContentString =
        SimulatorContentString.simulatorContentString;
    return ResponsiveGridView.builder(
      shrinkWrap: true,
      clipBehavior: Clip.none,
      alignment: ResponsiveWrapper.of(context).isLargerThan(TABLET)
          ? Alignment.center
          : Alignment.topCenter,
      itemCount: simulatorContentString.length,
      gridDelegate: const ResponsiveGridDelegate(
        crossAxisExtent: 500,
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
            title: simulatorContentString[index].title,
            image: '',
            //image: simulatorContentString[index].image,
          ),
        ]);
      },
    );
  }
}
