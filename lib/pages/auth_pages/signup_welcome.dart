import 'dart:async';

import 'package:donation_flutter_app/controllers/signup_options_controller.dart';
import 'package:donation_flutter_app/routes/route_names.dart';
import 'package:donation_flutter_app/utils/app_static_data/signup_types.dart';
import 'package:donation_flutter_app/utils/components/auth_component/auth_appbar.dart';
import 'package:donation_flutter_app/utils/components/auth_component/singin_text.dart';
import 'package:donation_flutter_app/utils/components/home_components/progress_bar.dart';
import 'package:donation_flutter_app/utils/functions/height_width/height_width.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/user_controller.dart';

class SignupWelcome extends StatefulWidget {
  const SignupWelcome({Key? key}) : super(key: key);

  @override
  State<SignupWelcome> createState() => _SignupWelcomeState();
}

class _SignupWelcomeState extends State<SignupWelcome> {
  final UserController userController = Get.put(UserController());

  final SignUpOptionController signUpOptionController =
      Get.put(SignUpOptionController());
  String selectedValue = '';
  List<Map<String, dynamic>> userTypes = signupUserTypes;

  /*
   * @purpose : to navigate user to appropriate signup form
   *
   * @parameter : sign up option (index)
   *
   * @return : void
   *
   * @created by : Vedant Rana
   */

  void navigateToLoginType(int index){
    setState(() {
      selectedValue = 'Option ${index + 1}';
      signUpOptionController
          .setCurrentSignUpOption(selectedValue);
    });

    Timer(const Duration(milliseconds: 200), () {
      if (selectedValue == 'Option 1') {
        Get.toNamed(RouteNames.SIGNUP_ROUTE);
      } else {
        Get.toNamed(RouteNames.SIGNUP_SECOND_ROUTE);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    selectedValue = signUpOptionController.currentSignUpOption.value;  //controller initialize to get signup types from getxController
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AuthAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /* Progress bar component for display current step of sign up
               * it requires to pass step integer
               */
              ProgressBar(
                page: 1,
              ),
              SizedBox(
                height: calculateHeight(0.03, context),
              ),
              const Text(
                "Welcome to\nHeartSprint",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: calculateHeight(0.04, context),
              ),
              const Text(
                "You need to select profile type that you want to use in the app.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: calculateHeight(0.03, context),
              ),


              /*
               *@Widget ListView with Inkwell,
               *
               * @purpose : List view to display signup options : 'supporter', 'need support', 'business account'
               */
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
                      onTap: () {
                        navigateToLoginType(index);
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
                                navigateToLoginType(index);
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  );

                },
              ),
              SizedBox(
                height: calculateHeight(0.045, context),
              ),
              const SignInText(),
            ],
          ),
        ),
      ),
    );
  }
}
