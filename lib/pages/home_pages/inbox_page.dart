import 'package:donation_flutter_app/utils/app_static_data/inbox_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> inboxItems = inboxItemsData;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
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
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(inboxItems[index]['subtitle'],
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400)),
                  trailing: Container(
                    width: 50,
                    alignment: Alignment.topCenter,
                    child: Text(
                      DateFormat('hh:mm a').format(inboxItems[index]['time']),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  onTap: () {},
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
