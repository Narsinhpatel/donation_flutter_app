import 'package:donation_flutter_app/routes/route_names.dart';
import 'package:donation_flutter_app/utils/app_static_data/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/functions/height_width/height_width.dart';

class ThankYouPage extends StatelessWidget {
  const ThankYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: calculateHeight(0.5, context),
            child: Stack(
              children: [
                SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      ImageString.WELCOME_CHILD_IMG,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: calculateHeight(0.07, context),
          ),
          Image.asset(
            ImageString.DONATION_CHECK_ICON,
            height: calculateHeight(0.085, context),
          ),
          SizedBox(
            height: calculateHeight(0.07, context),
          ),
          const Text(
            "Thank you for your donation",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: calculateHeight(0.025, context),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: calculateHeight(0.045, context),
          ),
          ElevatedButton(
            onPressed: () {
              Get.offAllNamed(RouteNames.HOME_BODY_ROUTE);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1F878E),
              minimumSize: Size(
                calculateWidth(0.9, context),
                calculateHeight(0.07, context),
              ),
              padding: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              'Homepage',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
