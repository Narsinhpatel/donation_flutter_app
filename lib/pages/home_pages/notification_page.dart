import 'package:donation_flutter_app/utils/components/home_components/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Notification extends StatelessWidget {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> inboxItems = [
      {
        'title': 'Care Orgnization',
        'subtitle':
            'Thank you, I hop your help is useful for others, We are always open...',
        'imagePath': 'assets/images/inbox/image1.png',
        'time': DateTime.now().subtract(const Duration(hours: 2)),
      },
      {
        'title': 'UNICEF',
        'subtitle':
            'Thank you, I hop your help is useful for others, We are always open...',
        'imagePath': 'assets/images/inbox/image2.png',
        'time': DateTime.now().subtract(const Duration(hours: 5)),
      },
      {
        'title': 'TUA Orphanage',
        'subtitle':
            'Thank you, I hop your help is useful for others, We are always open...',
        'imagePath': 'assets/images/inbox/image3.png',
        'time': DateTime.now().subtract(const Duration(hours: 10)),
      },
    ];

    return Scaffold(
      appBar: const HomeAppBar(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Notification',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: inboxItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        alignment: Alignment.topLeft,
                        child: Text(
                          DateFormat('EEEE, MMM d, yyyy')
                              .format(inboxItems[index]['time']),
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.5)),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        leading: Image.asset(inboxItems[index]['imagePath']),
                        title: Text(
                          inboxItems[index]['title'],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          inboxItems[index]['subtitle'],
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        trailing: const Icon(Icons.more_vert),
                        onTap: () {
                          // Add functionality to handle tap on inbox item
                        },
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                        alignment: Alignment.topLeft,
                        child: Text(
                          DateFormat('hh:mm a')
                              .format(inboxItems[index]['time']),
                          style: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
