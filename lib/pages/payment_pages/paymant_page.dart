import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/components/home_components/home_appbar.dart';
import '../../utils/components/payments_components/payment_methods_list.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Payments Methods',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Credit Card',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            PaymentMethodTile(
              imagePath: "assets/images/payment/mastercard.png",
              title: "MasterCard",
              value: 1,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
            const SizedBox(height: 10),
            PaymentMethodTile(
              imagePath: "assets/images/payment/visa.png",
              title: "Visa",
              value: 2,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Online Payment',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            const SizedBox(height: 40),
            PaymentMethodTile(
              imagePath: "assets/images/payment/paypal.jpg",
              title: "Paypal",
              value: 3,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
            const SizedBox(height: 10),
            PaymentMethodTile(
              imagePath: "assets/images/payment/bitcoin.png",
              title: "Bitcoin Wallet",
              value: 4,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/confirm-payment");
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
      ),
    );
  }
}