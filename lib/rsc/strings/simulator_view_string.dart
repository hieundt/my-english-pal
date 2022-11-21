import 'package:myenglishpal_web/rsc/images/app_images.dart';

class SimulatorContentString {
  static final simulatorContentString = [
    SimulatorContentString(
      title: 'Normal mode',
      description: 'You are a beginner?\nTry this',
      image: SimulatorImages.normalModeImage,
    ),
    SimulatorContentString(
      title: 'Hard mode',
      description: 'Too easy for you?\nTake on some challenges',
      image: SimulatorImages.hardModeImage,
    ),
  ];

  String title;
  String description;
  String image;

  SimulatorContentString({
    required this.title,
    required this.description,
    required this.image,
  });
}
