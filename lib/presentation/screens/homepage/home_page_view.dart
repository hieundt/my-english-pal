import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/content/listening_content.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/content/reading_content.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/header/header.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: const [
          Text(
            'Greeting!',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            'What we have here',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          //HomePageHeader(),
          HomePageHeader(),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Listening practices',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          HomePageListeningContent(),
          Text(
            'Reading practices',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          HomePageReadingContent(),
        ],
      ),
    );
  }
}
