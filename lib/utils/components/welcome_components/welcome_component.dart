import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app_static_data/welcome_data.dart';

class WelcomeComponent extends StatelessWidget {
  int currentPage;

  WelcomeComponent(
      {super.key, required this.currentPage,});


  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> welcome_data = getWelcomeData();
    Map<String, dynamic> page = welcome_data[currentPage];
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(page['background_img']),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.65),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            constraints: const BoxConstraints.expand(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 80,
                ),
                currentPage == 0
                    ? Image.asset(
                  'assets/images/welcome/heart.png',
                  height: 140,
                )
                    : const SizedBox(
                  height: 140,
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    page['title'],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  page['description'],
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}
