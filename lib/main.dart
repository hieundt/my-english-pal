import 'package:flutter/material.dart';

import 'package:myenglishpal_web/presentation/screens/account/profile/profile_view.dart';
import 'package:myenglishpal_web/presentation/screens/account/register_view.dart';
import 'package:myenglishpal_web/presentation/screens/account/signin_view.dart';
import 'package:myenglishpal_web/presentation/screens/account/verify_email_view.dart';
import 'package:myenglishpal_web/presentation/screens/grammar/grammar_view.dart';
import 'package:myenglishpal_web/presentation/screens/simulator/simulator_view.dart';
import 'package:myenglishpal_web/presentation/screens/splash/splash_view.dart';
import 'package:myenglishpal_web/app_scroll_behavior.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/presentation/navigation/navigate_controller.dart';
import 'package:myenglishpal_web/presentation/screens/comunity/community_view.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/home_page_view.dart';

import 'package:responsive_framework/responsive_framework.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyEnglishPal());
}

class MyEnglishPal extends StatelessWidget {
  const MyEnglishPal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(
          context,
          widget!,
        ),
        breakpoints: const [
          ResponsiveBreakpoint.resize(
            576,
            name: MOBILE,
          ),
          ResponsiveBreakpoint.autoScale(
            768,
            name: TABLET,
          ),
          ResponsiveBreakpoint.resize(
            992,
            name: DESKTOP,
          ),
          ResponsiveBreakpoint.autoScale(
            1200,
            name: 'XL',
          ),
        ],
      ),
      initialRoute: splashRoute,
      routes: {
        splashRoute: (context) => const SplashView(),
        signInRoute: (context) => const SignInView(),
        registerRoute: (context) => const RegisterView(),
        verifyEmailRoute: (context) => const VerifyEmailView(),
        profileRoute: (context) => const ProfileView(),
        navigateControllerRoute: (context) => const NavigateController(),
        homePageRoute: (context) => const HomePageView(),
        comunityRoute: (context) => const CommunityView(),
        grammarRoute: (context) => const GrammarView(),
        simulatorRoute: (context) => const SimulatorView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
