import 'package:flutter/material.dart';
import 'package:myenglishpal_web/data/services/firebase_auth_services.dart';
import 'package:myenglishpal_web/presentation/navigation/navigate_controller.dart';
import 'package:myenglishpal_web/presentation/screens/account/signin_view.dart';
import 'package:myenglishpal_web/presentation/screens/splash/splash_view.dart';
import 'package:myenglishpal_web/presentation/widgets/app_loading_dialog.dart';
import 'package:myenglishpal_web/utils.dart';

class Initiator extends StatefulWidget {
  const Initiator({super.key});

  @override
  State<Initiator> createState() => _InitiatorState();
}

class _InitiatorState extends State<Initiator> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingDialog();
        } else if (snapshot.hasError) {
          return const Center(
            child: ErrorMessage(),
          );
        } else if (snapshot.hasData) {
          return const NavigateController();
        } else {
          return const SignInView();
        }
      },
    );
  }
}
