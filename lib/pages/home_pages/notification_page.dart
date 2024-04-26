import 'package:donation_flutter_app/utils/app_static_data/notification_data.dart';
import 'package:donation_flutter_app/utils/components/home_components/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> notificationItems = notificationsData;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                itemCount: notificationItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        alignment: Alignment.topLeft,
                        child: Text(
                          DateFormat('EEEE, MMM d, yyyy')
                              .format(notificationItems[index]['time']),
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        leading: Image.asset(notificationItems[index]['imagePath']),
                        title: Text(
                          notificationItems[index]['title'],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text(
                          notificationItems[index]['subtitle'],
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
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
                              .format(notificationItems[index]['time']),
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
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
