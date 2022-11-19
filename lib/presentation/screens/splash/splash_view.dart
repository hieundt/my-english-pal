import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:myenglishpal_web/presentation/navigation/navigate_controller.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      disableNavigation: true,
      splashIconSize: 500,
      duration: 5,
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: const Color(0xFF765EFC),
      splash: Column(
        children: [
          Image.asset(
            AppLogo.myEnglishPalLogo,
            scale: 1.5,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DefaultTextStyle(
              textAlign: TextAlign.center,
              style: ralewayStyle.copyWith(
                fontSize: 100,
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w800,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'My English Pal',
                    speed: const Duration(
                      milliseconds: 350,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      nextScreen: const NavigateController(),
    );
  }
}
