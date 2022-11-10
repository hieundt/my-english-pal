import 'package:myenglishpal_web/rsc/images/app_images.dart';

class CommunityContentData {
  static final communityContentData = [
    CommunityContentData(
      title: 'Discoveries Magazine',
      description:
          'Read Discoveries Magazine for all the latest news and views. Written in English at your level.',
      image: CommunityImages.magazine,
    ),
    CommunityContentData(
      title: 'Talking Idioms',
      description:
          'Impress your friends and teachers by using idioms next time you speak English!',
      image: CommunityImages.talkingIdioms,
    ),
  ];

  final String title;
  final String description;
  final String image;
  //final OutlinedButton button;

  CommunityContentData({
    required this.image,
    required this.title,
    required this.description,
    //required this.button,
  });
}
