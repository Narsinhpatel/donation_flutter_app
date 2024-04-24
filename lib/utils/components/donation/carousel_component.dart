import 'package:carousel_slider/carousel_slider.dart';
import 'package:donation_flutter_app/utils/app_static_data/image_strings.dart';
import 'package:donation_flutter_app/utils/functions/height_width/height_width.dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatefulWidget {
  const CarouselImages({super.key});

  @override
  State<CarouselImages> createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  List imagesList = [
    {'img': ImageString.CAROUSEL_IMG_1},
    {'img': ImageString.CAROUSEL_IMG_2},
    {'img': ImageString.CAROUSEL_IMG_3},
  ];
  int currentImg = 0;
  final CarouselController imageCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: CarouselSlider(
              items: imagesList
                  .map(
                    (item) => Stack(
                      children: [
                        Image.asset(
                          item['img'],
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.3),
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ],
                    ),
                  )
                  .toList(),
              carouselController: imageCarouselController,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 1,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentImg = index;
                  });
                },
              ),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: Container(
              width: calculateWidth(0.13, context),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                child: Center(
                  child: Text(
                    "${currentImg + 1}/3",
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
