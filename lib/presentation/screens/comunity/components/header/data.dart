import 'package:myenglishpal_web/rsc/images/app_images.dart';

class CommunityHeaderData {
  static final communityHeaderData = CommunityHeaderData(
    title: 'Community',
    description: 'Expand your vocabulary by discovering magazines and Idioms.',
    image: CommunityImages.headerImage,
  );
  final String title;
  final String description;
  final String image;

  CommunityHeaderData({
    required this.image,
    required this.title,
    required this.description,
  });
}
