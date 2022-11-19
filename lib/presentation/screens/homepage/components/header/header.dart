import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/homepage/components/header/data.dart';

class HomePageHeader extends StatefulWidget {
  const HomePageHeader({
    super.key,
  });

  @override
  State<HomePageHeader> createState() => _HomePageHeaderState();
}

class _HomePageHeaderState extends State<HomePageHeader> {
  int _current = 0;

  List<Widget> buildHeaderItem() {
    return homePageHeaderImage
        .map((e) => SizedBox(
              child: Card(
                elevation: 50.0,
                shadowColor: Colors.grey[900],
                child: Image.asset(
                  e,
                  fit: BoxFit.cover,
                  width: 1000,
                  height: 500,
                ),
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CarouselSlider(
              items: buildHeaderItem(),
              options: CarouselOptions(
                enableInfiniteScroll: false,
                initialPage: 0,
                aspectRatio: 16 / 9,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
