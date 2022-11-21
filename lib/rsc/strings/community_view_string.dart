import 'package:myenglishpal_web/rsc/images/app_images.dart';

class CommunityHeaderString {
  static final communityHeaderString = CommunityHeaderString(
    title: 'Community',
    description: 'Expand your vocabulary by discovering magazines and Idioms.',
    image: CommunityImages.headerImage,
  );
  final String title;
  final String description;
  final String image;

  CommunityHeaderString({
    required this.image,
    required this.title,
    required this.description,
  });
}

class CommunityContentString {
  static final communityContentString = [
    CommunityContentString(
      title: 'Discoveries Magazine',
      description:
          'Read Discoveries Magazine for all the latest news and views. Written in English at your level.',
      image: CommunityImages.magazine,
    ),
    CommunityContentString(
      title: 'Talking Idioms',
      description:
          'Impress your friends and teachers by using idioms next time you speak English!',
      image: CommunityImages.talkingIdioms,
    ),
  ];

  final String title;
  final String description;
  final String image;

  CommunityContentString({
    required this.image,
    required this.title,
    required this.description,
  });
}
