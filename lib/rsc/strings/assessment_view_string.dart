import 'package:myenglishpal_web/rsc/images/app_images.dart';

class AssessmentContentString {
  static final assessmentContentString = [
    AssessmentContentString(
      title: 'Skills',
      image: AssessmentImages.skillImage,
    ),
    AssessmentContentString(
      title: 'Vocabulary',
      image: AssessmentImages.vocabularyImage,
    ),
  ];

  String title;

  String image;

  AssessmentContentString({
    required this.title,
    required this.image,
  });
}
