import 'package:donation_flutter_app/utils/components/welcome_components/welcome_component.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int currentPage = 0;
  final PageController welcomeController= PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: welcomeController,
        onPageChanged: (index){
          setState(() {
            currentPage = index;
          });
        },
        pageSnapping: true,
        children: [
          WelcomeComponent(currentPage: currentPage, pageController: welcomeController,),
          WelcomeComponent(currentPage: currentPage, pageController: welcomeController,),
          WelcomeComponent(currentPage: currentPage, pageController: welcomeController,),
        ],
      ),
    );
  }
}
