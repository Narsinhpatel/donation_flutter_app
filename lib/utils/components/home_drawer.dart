import 'package:donation_flutter_app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/user_controller.dart';
import '../app_static_data/image_strings.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController());

    return Drawer(
      child: Stack(
        children: [
          ListView(
            children: [
              DrawerHeader(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage:
                      AssetImage(ImageString.DEFAULT_USER_IMG),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 170,
                            padding: const EdgeInsets.only(left: 8),
                            child: Obx(
                                  () => Text(
                                userController.user.value.userName ??
                                    "Default User",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            )),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding:
                            const EdgeInsets.fromLTRB(8, 8, 0, 0),
                            child: const Text(
                              "View Profile",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              ListTile(
                title: const Text(
                  'Explore',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(31, 135, 142, 1),
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  'Donations',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  'Settings',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
                onTap: () {
                  Get.toNamed(RouteNames.SETTINGS_ROUTE);
                },
              ),
              const SizedBox(
                height: 40,
              ),
              ListTile(
                title: const Text(
                  'Contact us',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  'About',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  'Help',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: const Text(
                  'Log out',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
          Positioned(
            right: 5,
            top: 35,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black12.withOpacity(0.1),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
              ),
            ),
          )
        ],
      ),
    );
  }
}
