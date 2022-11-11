import 'package:flutter/material.dart';
import 'package:myenglishpal_web/constants/routes.dart';
import 'package:myenglishpal_web/presentation/navigation/navigate_controller.dart';
import 'package:myenglishpal_web/presentation/screens/comunity/community_view.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/home_page_view.dart';
import 'package:myenglishpal_web/presentation/screens/user_account/register_view.dart';
import 'package:myenglishpal_web/presentation/screens/user_account/signin_view.dart';
import 'package:myenglishpal_web/presentation/screens/user_account/verify_email_view.dart';
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
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(
          context,
          widget!,
        ),
        breakpoints: const [
          ResponsiveBreakpoint.resize(
            350,
            name: MOBILE,
          ),
          ResponsiveBreakpoint.autoScale(
            600,
            name: TABLET,
          ),
          ResponsiveBreakpoint.resize(
            800,
            name: DESKTOP,
          ),
          ResponsiveBreakpoint.autoScale(
            1700,
            name: 'XL',
          ),
        ],
      ),
      home: const NavigateController(),
      //initialRoute: (context) => const SplashView(),
      routes: {
        signInRoute: (context) => const SignInView(),
        registerRoute: (context) => const RegisterView(),
        homePageRoute: (context) => const HomePageView(),
        verifyEmailRoute: (context) => const VerifyEmailView(),
        comunityRoute: (context) => const CommunityView()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
