import 'package:donation_flutter_app/utils/components/home_components/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> inboxItems = [
      {
        'title': 'Care Orgnization',
        'subtitle':
            'Thank you, I hop your help is useful for others, We are always open...',
        'imagePath': 'assets/images/inbox/image1.png',
      },
      {
        'title': 'UNICEF',
        'subtitle':
            'Thank you, I hop your help is useful for others, We are always open...',
        'imagePath': 'assets/images/inbox/image2.png',
      },
      {
        'title': 'TUA Orphanage',
        'subtitle':
            'Thank you, I hop your help is useful for others, We are always open...',
        'imagePath': 'assets/images/inbox/image3.png',
      },
    ];

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(children: [
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              '''Inbox''',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: inboxItems.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  contentPadding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  leading: Image.asset(inboxItems[index]['imagePath']),
                  title: Text(
                    inboxItems[index]['title'],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    inboxItems[index]['subtitle'],
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Text(
                    DateFormat.Hm().format(DateTime.now()),
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    // Add functionality to handle tap on inbox item
                  },
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
