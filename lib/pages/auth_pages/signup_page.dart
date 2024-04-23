import 'package:donation_flutter_app/controllers/user_controller.dart';
import 'package:donation_flutter_app/utils/components/auth_component/auth_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/user/user.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isObscured = true;
  bool showMobileNumberField = false;
  String selectedCountryCode = '+1';
  final Map<String, String> countryFlags = {
    '+1': 'assets/images/auth/flags/jorden_flag.png',
    '+91': 'assets/images/auth/flags/jorden_flag.png',
    '+44': 'assets/images/auth/flags/jorden_flag.png',
    '+81': 'assets/images/auth/flags/jorden_flag.png',
  };

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController confirmEmailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final UserController userController  = Get.put(UserController());

  void toggleVisibility() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!GetUtils.isEmail(value)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validateConfirmEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your email';
    } else if (value != emailController.text) {
      return 'Emails do not match';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  String? validateMobileNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your mobile number';
    }
    return null;
  }

  void saveUser(User newUser){
    userController.setUser(newUser);
    print(newUser.userName);
    Get.toNamed("/supportive_community");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AuthAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 40),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    '''Create your\naccount.''',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
                  ),
                ),
                const SizedBox(height: 40),
                Column(
                  children: [
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.5)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.5)),
                        ),
                      ),
                      validator: validateName,
                    ),
                    const SizedBox(height: 10),
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
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.5)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.5)),
                        ),
                      ),
                      validator: validateEmail,
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: confirmEmailController,
                      decoration: InputDecoration(
                        hintText: "Confirm Email",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.5)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.5)),
                        ),
                      ),
                      validator: validateConfirmEmail,
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: passwordController,
                      obscureText: isObscured,
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
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.5)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.5)),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            isObscured
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xFF2A2A2A).withOpacity(0.5),
                          ),
                          onPressed: toggleVisibility,
                        ),
                      ),
                      validator: validatePassword,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Checkbox(
                          value: showMobileNumberField,
                          onChanged: (newValue) {
                            setState(() {
                              showMobileNumberField = newValue!;
                            });
                          },
                        ),
                        const Text('Use mobile number instead of email'),
                      ],
                    ),
                    if (showMobileNumberField)
                      Row(
                        children: [
                          Container(
                            width: 120,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: DropdownButton<String>(
                              value: selectedCountryCode,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedCountryCode = newValue!;
                                });
                              },
                              underline: SizedBox(), // Remove underline
                              items:
                                  countryFlags.keys.map((String countryCode) {
                                return DropdownMenuItem<String>(
                                  value: countryCode,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        countryFlags[countryCode]!,
                                        width: 24,
                                        height: 18,
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        countryCode,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: SizedBox(
                              height: 44,
                              child: TextField(
                                controller: mobileNumberController,
                                decoration: InputDecoration(
                                  hintText: "Mobile Number",
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
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final newUser = User(
                            userName: nameController.text.toString(),
                            emailId: emailController.text.toString(),
                            password: passwordController.text.toString(),
                          );
                          saveUser(newUser);
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
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "If you have an account?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed("/signin");
                      },
                      child: const Text(
                        'SignIn',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
