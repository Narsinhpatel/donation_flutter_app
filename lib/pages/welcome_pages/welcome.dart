import 'package:donation_flutter_app/utils/components/welcome_components/welcome_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_static_data/welcome_data.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int currentPage = 0;
  final PageController welcomeController= PageController();

  Widget rowProgress() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        currentPage == 0
            ? const Padding(
          padding: EdgeInsets.all(4.0),
          child: Icon(
            Icons.circle,
            size: 10,
            color: Colors.cyan,
          ),
        )
            : const Padding(
          padding: EdgeInsets.all(4.0),
          child: Icon(
            Icons.circle,
            size: 10,
            color: Colors.white38,
          ),
        ),
        currentPage == 1
            ? const Icon(
          Icons.circle,
          size: 10,
          color: Colors.cyan,
        )
            : const Icon(
          Icons.circle,
          size: 10,
          color: Colors.white38,
        ),
        currentPage == 2
            ? const Padding(
          padding: EdgeInsets.all(4.0),
          child: Icon(
            Icons.circle,
            size: 10,
            color: Colors.cyan,
          ),
        )
            : const Padding(
          padding: EdgeInsets.all(4.0),
          child: Icon(
            Icons.circle,
            size: 10,
            color: Colors.white38,
          ),
        )
      ],
    );
  }

  List<Map<String, dynamic>> welcome_data = getWelcomeData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: Stack(children: [
          PageView.builder(
            controller: welcomeController,
            itemCount: welcome_data.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            pageSnapping: true,
            itemBuilder: (context, index) {
              return WelcomeComponent(
                currentPage: currentPage,
              );
            },
          ),
          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Get.offAllNamed('/signup_welcome');
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
                rowProgress(),
                TextButton(
                  onPressed: () {
                    if (currentPage < 2) {
                      welcomeController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    } else {
                      Get.offAllNamed('/signup_welcome');
                    }
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
