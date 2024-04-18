import 'package:donation_flutter_app/utils/app_static_data/image_strings.dart';
import 'package:flutter/material.dart';

class DonationType extends StatelessWidget {
  DonationType({super.key});

  List<Map<String, dynamic>> donationTypes = [
    {'title': "Health", "icon": ImageString.HEALTH_LOGO_IMG},
    {'title': "Education", "icon": ImageString.EDUCATION_LOGO_IMG},
    {'title': "Animals", "icon": ImageString.ANIMAL_LOGO_IMG},
    {'title': "View All", "icon": ImageString.VIEWALL_LOGO_IMG},
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
