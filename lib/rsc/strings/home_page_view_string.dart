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
      title: 'Part 1',
      description: 'Photographs',
      image: HomePageImages.partoneImage,
    ),
    HomePageTrainingContentString(
      title: 'Part 2',
      description: 'Question and response',
      image: HomePageImages.parttwoImage,
    ),
    HomePageTrainingContentString(
      title: 'Part 3',
      description: 'Short conversations',
      image: HomePageImages.partthreeImage,
    ),
    HomePageTrainingContentString(
      title: 'Part 4',
      description: 'Short talks',
      image: HomePageImages.partfourImage,
    ),
    HomePageTrainingContentString(
      title: 'Part 5',
      description: 'Incomplete sentences',
      image: HomePageImages.partfiveImage,
    ),
    HomePageTrainingContentString(
      title: 'Part 6',
      description: 'Text completion',
      image: HomePageImages.partsixImage,
    ),
    HomePageTrainingContentString(
      title: 'Part 7',
      description: 'Reading comprehension',
      image: HomePageImages.partsevenImage,
    ),
  ];

  final String title;
  final String image;
  final String description;

  HomePageTrainingContentString({
    required this.image,
    required this.title,
    required this.description,
  });
}
