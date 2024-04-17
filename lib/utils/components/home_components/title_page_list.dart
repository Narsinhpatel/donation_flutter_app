import 'package:flutter/material.dart';

class TitlePageCardsList extends StatelessWidget {
  TitlePageCardsList({super.key});

  List<Map<String, dynamic>> cardsDataList = [
    {
      'img': "assets/images/home/title-card-1.jpg",
      'title': "Orphans",
      'subtitle':
          "Fundraising campaign for an orphanage. We will sponsor 150 orphans"
    },
    {
      'img': "assets/images/home/title-card-2.jpg",
      'title': "Education",
      'subtitle':
          "Orphan sponsorship, we will collect donations to sponsor the study of 200 orphans in class 2023"
    },
    {
      'img': "assets/images/home/title-card-3.jpg",
      'title': "Donations",
      'subtitle':
          "Donations campaign to care for earthquake orphans in Syria and the outskirts of Türkiye"
    },
    {
      'img': "assets/images/home/title-card-4.jpg",
      'title': "Education",
      'subtitle':
          "A donation campaign to end the university requirements for students who are limited to paying for universities."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cardsDataList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        Map<String, dynamic> card = cardsDataList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: SizedBox(
            height: 290,
            width: 310,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    card['img'],
                    fit: BoxFit.cover,
                    height: 180,
                    width: 300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 14),
                  child: Text(
                    card['title'],
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(31, 113, 118, 1),
                    ),
                  ),
                ),
                Text(
                  card['subtitle'],
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
