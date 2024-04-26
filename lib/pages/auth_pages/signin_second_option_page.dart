import 'package:donation_flutter_app/controllers/user_controller.dart';
import 'package:donation_flutter_app/routes/route_names.dart';
import 'package:donation_flutter_app/utils/components/auth_component/auth_appbar.dart';
import 'package:donation_flutter_app/utils/components/auth_component/singin_text.dart';
import 'package:donation_flutter_app/utils/components/home_components/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/user/user.dart';
import '../../utils/functions/height_width/height_width.dart';

class SignupSecond extends StatefulWidget {
  const SignupSecond({Key? key}) : super(key: key);

  @override
  State<SignupSecond> createState() => _SignupSecondState();
}

class _SignupSecondState extends State<SignupSecond> {
  bool isObscured = true;
  bool showMobileNumberField = false;
  String selectedCountryCode = '+1';
  String _selectedOption = 'Rent';
  final Map<String, String> countryFlags = {
    '+1': 'assets/images/auth/flags/jorden_flag.png',
    '+91': 'assets/images/auth/flags/jorden_flag.png',
    '+44': 'assets/images/auth/flags/jorden_flag.png',
    '+81': 'assets/images/auth/flags/jorden_flag.png',
  };

  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  final TextEditingController addressesController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();

  TextEditingController _descriptionController = TextEditingController();
  final UserController userController = Get.put(UserController());

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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

  String? validateAge(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your age';
    }
    return null;
  }

  String? validateAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please Select address';
    }
    return null;
  }

  String? validateMobileNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your mobile number';
    }
    return null;
  }

  void saveUser(User newUser) {
    userController.setUser(newUser);
    Get.toNamed(RouteNames.SUPPORTIVE_COMMUNITY_ROUTE);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AuthAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                ProgressBar(page: 2),
                SizedBox(
                  height: calculateHeight(0.03, context),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    '''Create your\naccount.''',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
                  ),
                ),
                SizedBox(
                  height: calculateHeight(0.03, context),
                ),
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
                      controller: ageController,
                      decoration: InputDecoration(
                        hintText: "Age",
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
                      validator: validateAge,
                    ),

                    const SizedBox(height: 10),
                    TextFormField(
                      controller: addressesController,
                      decoration: InputDecoration(
                        hintText: "Addresses",
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
                          onPressed: () {
                            // Handle IconButton onPressed event here
                          },
                          icon: Icon(
                            Icons.place,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                      validator: validateAddress,
                    ),
                    const SizedBox(height: 10),
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
                            items: countryFlags.keys.map((String countryCode) {
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
                            child: TextFormField(
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
                              // validator: validateMobileNumber,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: calculateHeight(0.02, context),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        '''The required Support''',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: calculateHeight(0.02, context),
                    ),
                    Container(
                      width: 370,
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: DropdownButton<String>(
                        value: _selectedOption,
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedOption = newValue!;
                          });
                        },
                        items: <String>['Rent', 'Medical', 'Other']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    _selectedOption == 'Medical'
                        ? Column(
                            children: [
                              SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  // Add file picker functionality here
                                },
                                child: TextFormField(
                                  readOnly:
                                      true, // Prevent keyboard from showing
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.upload,
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                    hintText: "Attach Document",
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
                                  ),
                                ),
                              ),
                            ],
                          )
                        : _selectedOption == 'Other'
                            ? Column(
                                children: [
                                  SizedBox(height: 20),

                                  // Add description field
                                  TextFormField(
                                    maxLines: 3,
                                    controller: _descriptionController,
                                    decoration: InputDecoration(
                                      hintText: 'description',
                                      hintStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 7, horizontal: 16),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        borderSide: BorderSide(
                                            color:
                                                Colors.black.withOpacity(0.5)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        borderSide: BorderSide(
                                            color:
                                                Colors.black.withOpacity(0.5)),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : SizedBox(),
                    // Empty container if no additional fields needed
                    SizedBox(
                      height: calculateHeight(0.03, context),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final User newUser = User(
                            userName: nameController.text.toString(),
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
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: calculateHeight(0.125, context),
                ),
                const SignInText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
