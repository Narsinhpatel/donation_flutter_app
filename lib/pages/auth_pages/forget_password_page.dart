import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10.0, top: 30.0),
                  child:
                      Image.asset('assets/images/auth/heart.png', width: 120),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 32.0,
                      right: 32,
                    ),
                    child: Row(
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
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              alignment: Alignment.topLeft,
              child:
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back,color: Colors.black,),
                  ),

              ),

            const SizedBox(height: 30),
            const Center(
              child: Text(
                "Forget Password",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 24),
              width: 380,
              height: 48,
              child: const Center(
                child: Text(
                  '''If you want to change the password put   
   your email to validate your account ''',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Form(
              child: Column(
                children: [
                  SizedBox(
                    width: 370,
                    height: 44,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email or Mobile Number",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(
                                  0.5)), // Set border color with opacity
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(
                                  0.5)), // Set border color with opacity
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      if (Form.of(context).validate()) {
                        // Form is valid, do something with the data
                        print('Form is valid');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1F878E),
                      // Set background color to #1F878E
                      minimumSize: const Size(370, 50),

                      padding: const EdgeInsets.all(10),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
            const Center(
              child: Text(
                "Provide a reset code",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }
}
