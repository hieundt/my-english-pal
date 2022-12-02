import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/account/register_view.dart';
import 'package:myenglishpal_web/presentation/screens/account/signin_view.dart';

class AuthController extends StatefulWidget {
  const AuthController({super.key});

  @override
  State<AuthController> createState() => _AuthControllerState();
}

class _AuthControllerState extends State<AuthController> {
  bool isSignIn = true;
  void toggle() => setState(() {
        isSignIn = !isSignIn;
      });

  @override
  Widget build(BuildContext context) => isSignIn
      ? SignInView(
          onTapRegister: toggle,
        )
      : RegisterView(
          onTapSignIn: toggle,
        );
}
