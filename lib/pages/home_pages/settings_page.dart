import 'package:donation_flutter_app/utils/app_static_data/image_strings.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isNotificationOn = false;

  @override
  Widget build(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Notifications has been allowed'),
      duration: Duration(seconds: 2),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          isNotificationOn = false;
          setState(() {});
        },
      ),
    );
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Image.asset(
                      ImageString.SETTINGS_BELL_ICON,
                      width: 20,
                    ),
                    title: const Text("Notifications"),
                    trailing: Switch(
                      value: isNotificationOn,
                      onChanged: (value) {
                        setState(() {
                          isNotificationOn = value;
                        });
                        if (value) {
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                    ),
                  ),
                  ListTile(
                    leading: Image.asset(
                      ImageString.SETTINGS_LOCK_ICON,
                      width: 20,
                    ),
                    title: const Text("Change Password"),
                  ),
                  ListTile(
                    leading: Image.asset(
                      ImageString.SETTINGS_CHAIR_ICON,
                      width: 20,
                    ),
                    title: const Text("Accessibility"),
                  ),
                  ListTile(
                    leading: Image.asset(
                      ImageString.SETTINGS_USERS_ICON,
                      width: 20,
                    ),
                    title: const Text("Contact us"),
                  ),
                  ListTile(
                    leading: Image.asset(
                      ImageString.SETTINGS_QUESTION_ICON,
                      width: 20,
                    ),
                    title: const Text("Help"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*

Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text("Settings"),
          //
          // ListTile(
          //   leading: Container(
          //     width: 20,
          //     child: Image.asset(
          //       ImageString.SETTINGS_LOCK_ICON,
          //       width: 20,
          //     ),
          //   ),
          //   title: Text("Change Password"),
          // ),
          // ListTile(
          //   leading: Image.asset(
          //     ImageString.SETTINGS_CHAIR_ICON,
          //     width: 20,
          //   ),
          //   title: Text("Accessibility"),
          // ),
          // ListTile(
          //   leading: Image.asset(
          //     ImageString.SETTINGS_USERS_ICON,
          //     width: 20,
          //   ),
          //   title: Text("Contact us"),
          // ),
          // ListTile(
          //   leading: Image.asset(
          //     ImageString.SETTINGS_QUESTION_ICON,
          //     width: 20,
          //   ),
          //   title: Text("Help"),
          // ),
        ],
      ),
    );
 */
