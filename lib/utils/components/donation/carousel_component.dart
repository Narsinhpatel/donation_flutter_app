import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:donation_flutter_app/utils/app_static_data/image_strings.dart';
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
  ];
  int currentImg = 0;
  final CarouselController imageCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 600,
        child: CarouselSlider(
          items: imagesList.map(
            (item) => Image.asset(
              item['img'],
              fit: BoxFit.cover,
              width: double.infinity,
              height: 600,
            ),
          ).toList(),
          carouselController: imageCarouselController,
          options: CarouselOptions(
            scrollPhysics: BouncingScrollPhysics(),
            autoPlay: true,
            aspectRatio: 2,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                currentImg = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
