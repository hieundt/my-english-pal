import 'package:flutter/material.dart';
import 'package:myenglishpal_web/firebase_options.dart';
import 'package:myenglishpal_web/presentation/screens/account/profile/profile_view.dart';
import 'package:myenglishpal_web/presentation/screens/account/signup_view.dart';
import 'package:myenglishpal_web/presentation/screens/account/signin_view.dart';
import 'package:myenglishpal_web/presentation/screens/grammar/grammar_view.dart';
import 'package:myenglishpal_web/presentation/screens/assessment/assessment_view.dart';
import 'package:myenglishpal_web/presentation/screens/quiz/quiz_view.dart';
import 'package:myenglishpal_web/presentation/screens/splash/splash_view.dart';
import 'package:myenglishpal_web/app_scroll_behavior.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/presentation/navigation/navigate_controller.dart';
import 'package:myenglishpal_web/presentation/screens/comunity/community_view.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/home_page_view.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        signUpRoute: (context) => const SignUpView(),
        profileRoute: (context) => const ProfileView(),
        navigateControllerRoute: (context) => const NavigateController(),
        homePageRoute: (context) => const HomePageView(),
        comunityRoute: (context) => const CommunityView(),
        grammarRoute: (context) => const GrammarView(),
        assessmentRoute: (context) => const AssessmentView(),
        //quizRoute: (context) => const QuizView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
