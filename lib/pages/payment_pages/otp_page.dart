import 'package:donation_flutter_app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/components/home_components/home_appbar.dart';

class ReceivedOtp extends StatefulWidget {
  const ReceivedOtp({Key? key}) : super(key: key);

  @override
  State<ReceivedOtp> createState() => _ReceivedOtpState();
}

class _ReceivedOtpState extends State<ReceivedOtp> {
  late List<TextEditingController> controllers;

  @override
  void initState() {
    super.initState();
    _showSnackBar();

    controllers = List.generate(4, (_) => TextEditingController());
  }




  void _showSnackBar() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(

          backgroundColor: Colors.transparent,
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          width: 300,
          content: Container(
              margin: const EdgeInsets.only(bottom: 250),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                    color: const Color.fromRGBO(31, 135, 142, 1), width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text('OTP Has Been Received.',
                        style: TextStyle(
                          color: Color.fromRGBO(31, 135, 142, 1),
                        )),
                  ),
                  TextButton(
                      onPressed: () {
                        const String otp = '2525';

                        for (int i = 0; i < controllers.length; i++) {
                          controllers[i].text = otp[i];
                        }
                      },
                      child: const Text("Paste it"))
                ],
              )),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
        child: Column(
          children: [
            const Text(
              'Receive OTP',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            const SizedBox(height: 20),
            const Text(
              'Please provide the password that you received on your mobile number ending with: *** *** **52',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) => Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    alignment: Alignment.center,
                    child: TextFormField(
                      controller: controllers[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        counterText: "",
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteNames.THANK_YOU_ROUTE);
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
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
