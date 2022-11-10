import 'package:myenglishpal_web/rsc/images/app_images.dart';

class HomePageContentData {
  static final homePageContentData = [
    HomePageContentData(
      title: 'Part 1\nPhotographs',
      image: HomePageImages.partoneImage,
    ),
    HomePageContentData(
      title: 'Part 2\nQuestion and response',
      image: HomePageImages.parttwoImage,
    ),
    HomePageContentData(
      title: 'Part 3\nShort conversations',
      image: HomePageImages.partthreeImage,
    ),
    HomePageContentData(
      title: 'Part 4\nShort talks',
      image: HomePageImages.partfourImage,
    ),
    HomePageContentData(
      title: 'Part 5\nIncomplete sentences',
      image: HomePageImages.partfiveImage,
    ),
    HomePageContentData(
      title: 'Part 6\nText completion',
      image: HomePageImages.partsixImage,
    ),
    HomePageContentData(
      title: 'Part 7\nReading comprehension',
      image: HomePageImages.partsevenImage,
    ),
  ];

  final String title;
  final String image;
  //final OutlinedButton button;

  HomePageContentData({
    required this.image,
    required this.title,
    //required this.button,
  });
}
