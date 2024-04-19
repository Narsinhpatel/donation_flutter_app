import 'dart:async';

import 'package:donation_flutter_app/utils/components/auth_component/auth_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupWelcome extends StatefulWidget {
  const SignupWelcome({Key? key}) : super(key: key);

  @override
  State<SignupWelcome> createState() => _SignupWelcomeState();
}

class _SignupWelcomeState extends State<SignupWelcome> {
  String selectedValue = '';
  List<Map<String, dynamic>> userTypes = [
    {
      'type': "Supporter",
      'description': "Access to the donations and all the general services"
    },
    {
      'type': "Need Support",
      'description': "All your personal information will be confidential"
    },
    {
      'type': "Business Account",
      'description': "This profile customized for the partners"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AuthAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome to\nHeartSprint",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "You need to select profile type that you want to use in the app.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 25),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: userTypes.length,
                itemBuilder: (BuildContext context, int index) {
                  Map<String, dynamic> type = userTypes[index];
                  return Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 0,
                      vertical: 4,
                    ),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          selectedValue = 'Option ${index + 1}';
                        });

                        Timer(Duration(milliseconds: 200), () {
                          if(selectedValue == 'Option 1'){
                            Get.toNamed('/signup');
                          }else{
                            Get.toNamed('/signup_second');
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: selectedValue == 'Option ${index + 1}'
                              ? const Color.fromRGBO(31, 135, 142, 1)
                              : const Color.fromRGBO(212, 245, 247, 0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                          child: ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                type['type'],
                                style: TextStyle(
                                  color: selectedValue == 'Option ${index + 1}'
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                type['description'],
                                style: TextStyle(
                                    color: selectedValue == 'Option ${index + 1}'
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            trailing: Radio<String>(
                              activeColor: Colors.white,
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
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "If you have an account? ",
                    style: TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/signin');
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
