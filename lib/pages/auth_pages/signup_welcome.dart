import 'package:flutter/material.dart';

class SignupWelcome extends StatefulWidget {
  const SignupWelcome({Key? key}) : super(key: key);

  @override
  State<SignupWelcome> createState() => _SignupWelcomeState();
}

class _SignupWelcomeState extends State<SignupWelcome> {
  String selectedValue = 'Option 1'; // Move selectedValue into the state class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/signup_welcome/heart.png',
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        padding: const EdgeInsets.all(10),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_drop_down_sharp),
                      ),
                      const Center(
                        child: Text(
                          "EN",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Text(
                "Welcome to\nHeartSprint",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const Text(
                "You need to select profile type that you want to use in the app.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20), // Add some space between the previous text and the list view
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: selectedValue == 'Option ${index + 1}'
                          ? Colors.blue[50]
                          : null,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                      child: ListTile(
                        title: Text('Option ${index + 1}'),
                        subtitle: Text(
                            'This is the subtitle for Option ${index + 1}'),
                        trailing: Radio<String>(
                          value: 'Option ${index + 1}',
                          groupValue: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
