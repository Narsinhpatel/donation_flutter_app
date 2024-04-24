import 'package:donation_flutter_app/utils/app_static_data/image_strings.dart';
import 'package:donation_flutter_app/utils/components/donation/carousel_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/functions/height_width/height_width.dart';

class DonationDetails extends StatelessWidget {
  const DonationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.black),
              height: calculateHeight(0.45, context),
              child: const CarouselImages(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: calculateHeight(0.03, context),
                  ),
                  const Text(
                    "Education",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: calculateHeight(0.02, context),
                  ),
                  Text(
                    "Let's help the orphans in jordan to have a better education",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(
                    height: calculateHeight(0.035, context),
                  ),
                  SizedBox(
                    width: calculateWidth(0.9, context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: calculateWidth(0.44, context),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(31, 135, 142, 1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                width: calculateWidth(0.14, context),
                                height: calculateWidth(0.14, context),
                                child: Center(
                                  child: Image.asset(
                                    ImageString.DONATION_TARGET_ICON,
                                    fit: BoxFit.cover,
                                    width: 25,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Target Amount",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black.withOpacity(0.4),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "\$15.000",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: calculateWidth(0.44, context),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(31, 135, 142, 1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                width: calculateWidth(0.14, context),
                                height: calculateWidth(0.14, context),
                                child: Center(
                                  child: Image.asset(
                                    ImageString.DONATION_REQUIRED_ICON,
                                    fit: BoxFit.cover,
                                    width: 28,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Raised so far",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black.withOpacity(0.4)),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "\$8.250",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: calculateHeight(0.035, context),
                  ),
                  Row(
                    children: [
                      Text(
                        "By",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
                      Text(
                        " UNRWA",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(0.9),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: calculateHeight(0.02, context),
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronicLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronicLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.5),
                      height: 1.8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed('/donation-amount-select');
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
            'Continue',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
