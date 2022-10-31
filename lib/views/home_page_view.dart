import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/constants/assets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int _activeIndex = 0;
  final images = [
    AssetConstants.beachImage,
    AssetConstants.educationImage,
    AssetConstants.technologyImage,
  ];

  Widget buildImage(String images, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Image.asset(
            images,
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: _activeIndex,
      count: images.length,
      effect: const ScrollingDotsEffect(
        dotWidth: 12,
        dotHeight: 12,
        spacing: 20.0,
        activeDotColor: Colors.cyan,
        activeDotScale: 1.5,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('This is homepage'),
      // ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              CarouselSlider.builder(
                //carouselController: ,
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height / 2,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  autoPlayInterval: const Duration(seconds: 2),
                  aspectRatio: 21 / 9,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _activeIndex = index;
                    });
                  },
                ),
                itemCount: images.length,
                itemBuilder: ((context, index, realIndex) {
                  final image = images[index];

                  return buildImage(image, index);
                }),
              ),
              const SizedBox(
                height: 32,
              ),
              buildIndicator(),
              Row(
                  // children: [
                  //   GridView.builder(
                  //       gridDelegate: SliverGridDelegate,
                  //       itemBuilder: itemBuilder)
                  // ],
                  )
            ],
          ),
        ),
      ),
    );
  }
}

// class HomePageView extends StatefulWidget {
//   const HomePageView({super.key});

//   @override
//   State<HomePageView> createState() => _HomePageViewState();
// }

// class _HomePageViewState extends State<HomePageView> {
//   int _current = 0;
//   final List<String> images = [
//     AssetConstants.shibaImage,
//     AssetConstants.workingImage,
//     AssetConstants.discussImage,
//   ];
//   final List<String> titles = [
//     'Shiba',
//     'Working',
//     'Discussing',
//   ];

//   List<Widget> generateImagesTitles() {
//     return images
//         .map((element) => ClipRRect(
//               borderRadius: BorderRadius.circular(15.0),
//               child: Image.asset(
//                 element,
//                 fit: BoxFit.cover,
//               ),
//             ))
//         .toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('This is a home page'),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           color: Colors.white,
//           padding: const EdgeInsets.only(top: 50),
//           child: Stack(
//             children: [
//               CarouselSlider(
//                 items: generateImagesTitles(),
//                 options: CarouselOptions(
//                   enlargeCenterPage: true,
//                   autoPlay: true,
//                   autoPlayAnimationDuration: const Duration(seconds: 1),
//                   autoPlayInterval: const Duration(seconds: 3),
//                   aspectRatio: 18 / 8,
//                   onPageChanged: (index, _) {
//                     setState(() {
//                       _current = index;
//                     });
//                   },
//                 ),
//               ),
//               AspectRatio(
//                 aspectRatio: 18 / 8,
//                 child: Center(
//                   child: Text(
//                     titles[_current],
//                     style: TextStyle(
//                         color: Colors.tealAccent,
//                         fontSize: MediaQuery.of(context).size.width / 10),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
