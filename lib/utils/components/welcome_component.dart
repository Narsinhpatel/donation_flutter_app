import 'package:flutter/material.dart';

import '../welcome_data.dart';

class WelcomeComponent extends StatelessWidget {
  int currentPage;
  final PageController pageController;

  WelcomeComponent(
      {super.key, required this.currentPage, required this.pageController});

  Widget RowProgress() {
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

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> welcome_data = getWelcomeData();
    Map<String, dynamic> page = welcome_data[currentPage];
    return Container(
      constraints: const BoxConstraints.expand(),
      child: Stack(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      currentPage != 0
                          ? TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Skip",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : const SizedBox(
                              width: 70,
                            ),
                      RowProgress(),
                      TextButton(
                        onPressed: () {
                          if (currentPage < 2) {
                            pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
