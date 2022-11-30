import 'package:myenglishpal_web/rsc/images/app_images.dart';

class HomePageVocabularyContentString {
  static final homePageVocabularyString = [
    HomePageVocabularyContentString(
      title: 'Education',
      image: HomePageImages.educationImages,
    ),
    HomePageVocabularyContentString(
      title: 'Dinning out',
      image: HomePageImages.dinningoutImages,
    ),
    HomePageVocabularyContentString(
      title: 'Travel',
      image: HomePageImages.travelImages,
    ),
    HomePageVocabularyContentString(
      title: 'Buisness',
      image: HomePageImages.buisinessImages,
    ),
    HomePageVocabularyContentString(
      title: 'Daily life',
      image: HomePageImages.dailylifeImages,
    ),
    HomePageVocabularyContentString(
      title: 'Entertainment',
      image: HomePageImages.entertainmentImages,
    ),
    HomePageVocabularyContentString(
      title: 'Technology',
      image: HomePageImages.technologyImages,
    ),
    HomePageVocabularyContentString(
      title: 'Health',
      image: HomePageImages.healthImages,
    ),
  ];

  final String title;
  final String image;

  HomePageVocabularyContentString({
    required this.image,
    required this.title,
  });
}

class HomePageTrainingContentString {
  static final homePageTrainingContentString = [
    HomePageTrainingContentString(
      title: 'Part 1\nPhotographs',
      image: HomePageImages.partoneImage,
    ),
    HomePageTrainingContentString(
      title: 'Part 2\nQuestion and response',
      image: HomePageImages.parttwoImage,
    ),
    HomePageTrainingContentString(
      title: 'Part 3\nShort conversations',
      image: HomePageImages.partthreeImage,
    ),
    HomePageTrainingContentString(
      title: 'Part 4\nShort talks',
      image: HomePageImages.partfourImage,
    ),
    HomePageTrainingContentString(
      title: 'Part 5\nIncomplete sentences',
      image: HomePageImages.partfiveImage,
    ),
    HomePageTrainingContentString(
      title: 'Part 6\nText completion',
      image: HomePageImages.partsixImage,
    ),
    HomePageTrainingContentString(
      title: 'Part 7\nReading comprehension',
      image: HomePageImages.partsevenImage,
    ),
  ];

  final String title;
  final String image;

  HomePageTrainingContentString({
    required this.image,
    required this.title,
  });
}
