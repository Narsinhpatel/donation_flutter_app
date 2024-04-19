import 'package:donation_flutter_app/pages/home_pages/home_page.dart';
import 'package:donation_flutter_app/utils/app_static_data/image_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int selectedIndex = 0;

  List<Widget> widgetList = [
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        shadowColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      drawer: Drawer(
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
                            AssetImage(ImageString.WELCOME_GRANDMA_IMG),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 170,
                            padding: const EdgeInsets.only(left: 8),
                            child: const Text(
                              "Mahmoud Tayyem",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
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
                    Get.toNamed('/settings');
                  },
                ),
                SizedBox(
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
                  icon: Icon(Icons.close),
                ),
              ),
            )
          ],
        ),
      ),
      body: widgetList[selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          selectedIconTheme:
              const IconThemeData(color: Color.fromRGBO(31, 135, 142, 1)),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              label: "HOme",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.mail,
                color: Colors.black,
              ),
              label: "HOme",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: "HOme",
            ),
          ],
        ),
      ),
    );
  }
}
