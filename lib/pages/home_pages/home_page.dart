import 'package:donation_flutter_app/controllers/user_controller.dart';
import 'package:donation_flutter_app/utils/components/home_components/donation_type.dart';
import 'package:donation_flutter_app/utils/components/home_components/nearby_cases.dart';
import 'package:donation_flutter_app/utils/components/home_components/title_page_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final UserController userController = Get.put(UserController());
  // final UserController userController = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    print(userController.user.value.userName);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Obx(

                  ()=>Text(
                    userController.user.value.userName??"Default User",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "What do you wanna dante today ?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 120,
                child: DonationType(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.zero,
              height: 300,
              child: TitlePageCardsList(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Nearby Cases",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: NearbyCases(), // Remove Expanded
            ),
          ],
        ),
      ),
    );
  }
}
