import 'package:flutter/material.dart';

class DonationType extends StatelessWidget {
  DonationType({super.key});

  List<Map<String, dynamic>> donationTypes = [
    {'title': "Health", "icon": 'assets/images/home/health.png'},
    {'title': "Education", "icon": 'assets/images/home/education.png'},
    {'title': "Animals", "icon": 'assets/images/home/animal.png'},
    {'title': "View All", "icon": 'assets/images/home/viewall.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: donationTypes.length,
      itemBuilder: (context, index) {
        Map<String, dynamic> type = donationTypes[index];
        return InkWell(
          onTap: () {},
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                child: Container(
                  width: 68,
                  height: 68,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(212, 245, 247, 0.37),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    type['icon'],
                  ),
                ),
              ),
              Text(
                type['title'],
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
