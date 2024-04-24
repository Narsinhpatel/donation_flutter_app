import 'package:donation_flutter_app/utils/components/auth_component/singin_text.dart';
import 'package:donation_flutter_app/utils/components/auth_component/supportive_page_fields.dart';
import 'package:donation_flutter_app/utils/components/home_components/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/components/auth_component/auth_appbar.dart';
import '../../utils/functions/height_width/height_width.dart';

class SupportiveCommunity extends StatefulWidget {
  const SupportiveCommunity({super.key});

  @override
  State<SupportiveCommunity> createState() => _SupportiveCommunityState();
}

class _SupportiveCommunityState extends State<SupportiveCommunity> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressesController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  bool showAdditionalFields = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
              children: [
                ProgressBar(page: 3),
                SizedBox(
                  height: calculateHeight(0.03, context),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    '''Supportive \nCommunity''',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
                  ),
                ),
                SizedBox(
                  height: calculateHeight(0.03, context),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    '''If you know any people who need support\nplease provide their info below.''',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: calculateHeight(0.03, context),
                ),
                const SupportiveTextFields(),
                SizedBox(
                  height: calculateHeight(0.02, context),
                ),
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
                      "Add different person",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: calculateHeight(0.02, context),
                ),
                if (showAdditionalFields) ...[
                  const SupportiveTextFields(),
                  SizedBox(
                    height: calculateHeight(0.02, context),
                  ),
                ],
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Get.toNamed("/child_support");
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
                SizedBox(
                  height: calculateHeight(0.02, context),
                ),
                TextButton(
                  onPressed: () {
                    Get.offAllNamed("/home");
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(
                  height: calculateHeight(0.095, context),
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
