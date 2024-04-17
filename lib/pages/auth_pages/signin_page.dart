import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscured = true;

  void _toggleVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

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
                    child: Image.asset(
                      'assets/images/signup_welcome/heart.png',
                      height: 70,
                    ),
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
              const SizedBox(height: 40),
              const Center(
                  child: Text("Sign In",
                      style: TextStyle(
                          fontSize: 36, fontWeight: FontWeight.w600))),
              const SizedBox(height: 40),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                            color: const Color(0xFF2A2A2A).withOpacity(0.5),
                            width: 1), // Set border color and width
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        minimumSize:
                            const Size(370, 47), // Set minimum size to 370x47
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sign in with Google",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Image(
                            image: AssetImage("assets/images/auth/google.png"),
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                            color: const Color(0xFF2A2A2A).withOpacity(0.5),
                            width: 1), // Set border color and width
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8.0), // Set border radius to 8px
                        ),
                        minimumSize:
                            const Size(370, 47), // Set minimum size to 370x47
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sign in with Facebook",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.facebook,
                            color: Colors.blueAccent,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Center(
                        child: Text(
                      "or sign in with your email",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                    )),
                    const SizedBox(height: 20),
                    Form(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 370,
                            height: 44,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Email",
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
                          const SizedBox(height: 20),
                          SizedBox(
                            width: 370,
                            height: 44,
                            child: TextFormField(
                              obscureText: _isObscured,
                              decoration: InputDecoration(
                                hintText: 'Password',
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
                                      color: Colors.black.withOpacity(0.5)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide(
                                      color: Colors.black.withOpacity(0.5)),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                      _isObscured
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: const Color(0xFF2A2A2A)
                                          .withOpacity(0.5)),
                                  onPressed: _toggleVisibility,
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your password';
                                }
                                // Add more validation rules for password if needed
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed('/forget_password');
                                },
                                child: const Text(
                                  'Forget Password',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),

                            ],
                          ),
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
                              // Set minimum size to 370x50
                              padding: const EdgeInsets.all(10),
                              // Set padding to 10px
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8), // Set border radius to 8px
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
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                    SizedBox(

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don’t have an account?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed("/signup");
                            },
                            child: const Text(
                              ' Create Account',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.blue,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
