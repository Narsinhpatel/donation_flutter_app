import 'package:donation_flutter_app/utils/app_static_data/default_users.dart';
import 'package:donation_flutter_app/utils/components/auth_component/auth_appbar.dart';
import 'package:donation_flutter_app/utils/components/snack_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../controllers/user_controller.dart';
import '../../models/user/user.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscured = true;
  final signInForm = GlobalKey<FormState>();

  void _toggleVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  final UserController userController = Get.put(UserController());

  void saveUser(User newUser) {
    userController.setUser(newUser);
    print(newUser.userName);
    Get.toNamed("/home");
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    void signInUser() {
      bool found = false;
      final List<User> users = getUsers();
      for (var user in users) {
        if (user.emailId == emailController.text && user.password == passwordController.text) {
          found = true;
          saveUser(user);
          break; // Stop the loop as we found the user
        }
      }

      if (!found) {
        displaySnackBar(title: "Login", message: "Email or Password is not valid!", isError: true);
      }
    }

    void signInUser1() {
      User? newUser;
      final List<User> users = getUsers();
      users.map((user) {
        if (user.emailId == emailController.text.toString() &&
            user.password == passwordController.text.toString()) {
          newUser = User(
            emailId: emailController.text.toString(),
            password: passwordController.text.toString(),
          );
          saveUser(newUser!);
        }else{
          displaySnackBar(title: "Login", message: "Email or Password is not valid !", isError: true);
        }
      }
      );
    }

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const AuthAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                      key: signInForm,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: emailController,
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
                                  color: Colors.black.withOpacity(0.5),
                                ), // Set border color with opacity
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "The Email Input is Empty";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: passwordController,
                            obscureText: _isObscured,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 7,
                                horizontal: 16,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.5),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.5),
                                ),
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
                              if (value == null || value.isEmpty) {
                                return "The Password Input is Empty";
                              }
                              return null;
                            },
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
                              if (signInForm.currentState!.validate()) {
                                signInUser();
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF1F878E),
                              minimumSize: const Size(370, 50),
                              padding: const EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              'Continue',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don’t have an account? ",
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/signup_welcome');
                          },
                          child: const Text(
                            "Create Account",
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
              )
            ],
          ),
        ));
  }
}
