import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:myenglishpal_web/presentation/screens/account/signin_view.dart';
import 'package:page_transition/page_transition.dart';
import 'package:myenglishpal_web/presentation/navigation/navigate_controller.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen.withScreenFunction(
      splash: AppLogo.myEnglishPalLogo,
      screenFunction: () async {
        return const NavigateController();
      },
      splashIconSize: ResponsiveValue(
        context,
        defaultValue: 300.0,
        valueWhen: [
          const Condition.smallerThan(
            name: MOBILE,
            value: 150.0,
          ),
          const Condition.smallerThan(
            name: TABLET,
            value: 200.0,
          ),
        ],
      ).value,
      backgroundColor: AppColors.mainThemeColor,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
