import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/account/sign_in/sign_in_header.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.ROW,
          children: [
            //! Left Container
            const ResponsiveRowColumnItem(
              rowFlex: 1,
              child: SignInHeader(),
            ),
            //!Sign In View
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
