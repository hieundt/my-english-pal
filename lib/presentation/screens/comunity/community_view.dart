import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/comunity/components/content.dart';
import 'package:myenglishpal_web/presentation/screens/comunity/components/header.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: const [
          CommunityHeader(),
          SizedBox(
            height: 50,
          ),
          CommunityContent(),
        ],
      ),
    );
  }
}
