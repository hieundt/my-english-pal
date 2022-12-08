// import 'package:flutter/material.dart';
// import 'package:myenglishpal_web/data/services/firebase/firebase_auth_services.dart';
// import 'package:myenglishpal_web/presentation/navigation/navigate_controller.dart';
// import 'package:myenglishpal_web/presentation/screens/account/signin_view.dart';

// class Initiator extends StatefulWidget {
//   const Initiator({super.key});

//   @override
//   State<Initiator> createState() => _InitiatorState();
// }

// class _InitiatorState extends State<Initiator> {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//       stream: FirebaseAuthServices().authStateChanges,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return const NavigateController();
//         } else {
//           return const SignInView();
//         }
//       },
//     );
//   }
// }
