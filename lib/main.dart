import 'package:flutter/material.dart';
import 'package:myenglishpal_web/constants/routes.dart';
import 'package:myenglishpal_web/responsive/desktop_scaffold.dart';
import 'package:myenglishpal_web/responsive/mobile_scaffold.dart';
import 'package:myenglishpal_web/responsive/responsive_layout.dart';
import 'package:myenglishpal_web/responsive/tablet_scaffold.dart';
import 'package:myenglishpal_web/views/comunity_view.dart';
import 'package:myenglishpal_web/views/home_page_view.dart';
import 'package:myenglishpal_web/views/navigation_view.dart';
import 'package:myenglishpal_web/views/register_view.dart';
import 'package:myenglishpal_web/views/signin_view.dart';
import 'package:myenglishpal_web/views/verify_email_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      home: const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
      routes: {
        signInRoute: (context) => const SignInView(),
        registerRoute: (context) => const RegisterView(),
        homePageRoute: (context) => const HomePageView(),
        verifyEmailRoute: (context) => const VerifyEmailView(),
        comunityRoute: (context) => const ComunityView()
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
