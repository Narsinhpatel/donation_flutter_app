import 'package:donation_flutter_app/utils/components/home_components/donation_type.dart';
import 'package:donation_flutter_app/utils/components/home_components/title_page_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome, Mahmoud",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              "What do you wanna dante today ?",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              height: 120,
              child: DonationType(),
            ),
            Container(
              height: 300,
              child: TitlePageCardsList(),
            ),
            Text(
              "Nearby Cases",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
