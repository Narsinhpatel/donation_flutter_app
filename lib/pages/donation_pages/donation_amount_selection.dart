import 'package:donation_flutter_app/controllers/donation_amount_controller.dart';
import 'package:donation_flutter_app/routes/route_names.dart';
import 'package:donation_flutter_app/utils/components/donation/carousel_component.dart';
import 'package:donation_flutter_app/utils/components/donation/donation_amount.dart';
import 'package:donation_flutter_app/utils/components/snack_bar.dart';
import 'package:donation_flutter_app/utils/functions/height_width/height_width.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/*
 * Scaffold screen to select or enter amount for donation with options os amount
 * or input of amount
 */
class DonationSelectionPage extends StatelessWidget {
  DonationSelectionPage({super.key});

  String? selectedAmountByChip;

  final TextEditingController amountController = TextEditingController();
  final DonationAmountController amountSelectedByChip =
      Get.put(DonationAmountController());

  /*
   * @purpose : setter method to set amount selected by user
   *
   * @parameter : String Amount
   *
   * @return : void
   *
   * @created by : Vedant Rana
   */
  setSelectedAmount(String amount) {
    selectedAmountByChip = amount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.black),
              height: calculateHeight(0.45, context),
              child: Stack(
                children: [

                  /*
                   * Carousel Component to display images in
                   * donation amount selection page
                   *
                   */

                  const CarouselImages(),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      width: calculateWidth(1, context),
                      height: calculateHeight(0.02, context),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(250, 253, 255, 1.0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: calculateHeight(0.005, context),
                  ),
                  const Text(
                    "How much wanna Donate ?",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: calculateHeight(0.03, context),
                  ),
                  SizedBox(
                    height: calculateHeight(0.2, context),

                    /*
                     *Donation amount Chips custom widget to select amount
                     *
                     */

                    child: DonationAmount(),
                  ),
                  SizedBox(
                    height: calculateHeight(0.015, context),
                  ),
                  const Text(
                    "or",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: calculateHeight(0.025, context),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        controller: amountController,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter amount',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: calculateHeight(0.045, context),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (amountSelectedByChip
                              .selectedAmount.value.isNotEmpty ||
                          amountController.text.isNotEmpty) {
                        // print("Success");
                        Get.toNamed(RouteNames.PAYMENT_METHODS_ROUTE);
                      } else {
                        displaySnackBar(
                            title: 'Donation',
                            message: 'Please Select or Enter Donation',
                            isError: true);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1F878E),
                      minimumSize: Size(
                        calculateWidth(0.9, context),
                        calculateHeight(0.07, context),
                      ),
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
            )
          ],
        ),
      ),
    );
  }
}
