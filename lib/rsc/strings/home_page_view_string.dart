import 'package:myenglishpal_web/rsc/images/app_images.dart';

class HomePageHeaderString {
  static final homePageHeaderString = [
    HomePageHeaderString(
      title: 'Connect to community',
      image: HomePageImages.headeroneImages,
    ),
    HomePageHeaderString(
      title: 'Flexibly mastering TOEIC with our test bank',
      image: HomePageImages.headertwoImages,
    ),
    HomePageHeaderString(
      title: 'An investment in education pays the best interest',
      image: HomePageImages.headerthreeImages,
    ),
    HomePageHeaderString(
      title: 'Detailed result statistics',
      image: HomePageImages.headerfourImages,
    ),
    HomePageHeaderString(
      title: 'Daily review calendar',
      image: HomePageImages.headerfiveImages,
    ),
    HomePageHeaderString(
      title: 'Multiple sets of questions',
      image: HomePageImages.headersixImages,
    ),
    HomePageHeaderString(
      title: 'Smart device connected to the internet is all you need',
      image: HomePageImages.headersevenImages,
    ),
    HomePageHeaderString(
      title: 'Actual exam simulation',
      image: HomePageImages.headereightImages,
    ),
  ];

  final String title;
  final String image;

  HomePageHeaderString({
    required this.image,
    required this.title,
  });
}

class HomePageContentString {
  static final homePageContentString = [
    HomePageContentString(
      title: 'Part 1\nPhotographs',
      image: HomePageImages.partoneImage,
    ),
    HomePageContentString(
      title: 'Part 2\nQuestion and response',
      image: HomePageImages.parttwoImage,
    ),
    HomePageContentString(
      title: 'Part 3\nShort conversations',
      image: HomePageImages.partthreeImage,
    ),
    HomePageContentString(
      title: 'Part 4\nShort talks',
      image: HomePageImages.partfourImage,
    ),
    HomePageContentString(
      title: 'Part 5\nIncomplete sentences',
      image: HomePageImages.partfiveImage,
    ),
    HomePageContentString(
      title: 'Part 6\nText completion',
      image: HomePageImages.partsixImage,
    ),
    HomePageContentString(
      title: 'Part 7\nReading comprehension',
      image: HomePageImages.partsevenImage,
    ),
  ];

  final String title;
  final String image;

  HomePageContentString({
    required this.image,
    required this.title,
  });
}
