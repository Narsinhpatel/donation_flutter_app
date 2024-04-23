import 'package:donation_flutter_app/pages/home_pages/home_page.dart';
import 'package:donation_flutter_app/pages/home_pages/inbox_page.dart';
import 'package:donation_flutter_app/pages/home_pages/notification_page.dart';
import 'package:donation_flutter_app/utils/components/home_components/home_appbar.dart';
import 'package:donation_flutter_app/utils/components/home_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int selectedIndex = 0;

  List<Widget> widgetList = [
    HomePage(),
    const NotificationPage(),
    const InboxPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: selectedIndex == 0
          ? AppBar(
              scrolledUnderElevation: 0.0,
              elevation: 0,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                )
              ],
            )
          : const HomeAppBar(),
      drawer: selectedIndex != 0 ? null : const HomeDrawer(),
      body: widgetList[selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: const Color.fromRGBO(31, 135, 142, 1),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: selectedIndex != 0
                    ? Colors.black.withOpacity(0.4)
                    : const Color.fromRGBO(31, 135, 142, 1),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: selectedIndex != 1
                    ? Colors.black.withOpacity(0.4)
                    : const Color.fromRGBO(31, 135, 142, 1),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.mail,
                color: selectedIndex != 2
                    ? Colors.black.withOpacity(0.4)
                    : const Color.fromRGBO(31, 135, 142, 1),
              ),
              label: "HOme",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: selectedIndex != 3
                    ? Colors.black.withOpacity(0.4)
                    : const Color.fromRGBO(31, 135, 142, 1),
              ),
              label: "HOme",
            ),
          ],
        ),
      ),
    );
  }
}
