import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/account/profile/components/content.dart';
import 'package:myenglishpal_web/presentation/screens/account/profile/components/header.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ProfileHeader(),
          SizedBox(
            height: 50,
          ),
          ProfileContent(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
