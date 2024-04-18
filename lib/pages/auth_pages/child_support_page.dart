import 'package:donation_flutter_app/utils/components/auth_component/child_support_fields.dart';
import 'package:donation_flutter_app/utils/components/auth_component/supportive_page_fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/components/auth_component/auth_appbar.dart';

class ChildSupport extends StatefulWidget {
  const ChildSupport({super.key});

  @override
  State<ChildSupport> createState() => _ChildSupportState();
}

class _ChildSupportState extends State<ChildSupport> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressesController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  bool showAdditionalFields = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                    '''Child Support''',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    '''If you know any children who need support \nplease provide their info below.''',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 40),
                const ChildSupportFields(),

                const SizedBox(height: 20),


                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          showAdditionalFields = !showAdditionalFields;
                        });
                      },
                      icon: const Icon(Icons.add),
                    ),
                    const Text(
                      "Add different child",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                if (showAdditionalFields) ...[
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'The child supporter',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const ChildSupportFields(),
                  const SizedBox(height: 20),
                ],

                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {

                      Get.toNamed("/home");
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
                const SizedBox(height: 20),

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
