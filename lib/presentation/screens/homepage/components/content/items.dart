import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/content/data.dart';

class HomePageContentItem extends StatelessWidget {
  final HomePageContentData homePageContentData;
  const HomePageContentItem({
    super.key,
    required this.homePageContentData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 50.0,
        shadowColor: Colors.grey[900],
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                width: 500,
                height: 450,
                homePageContentData.image,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                homePageContentData.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
