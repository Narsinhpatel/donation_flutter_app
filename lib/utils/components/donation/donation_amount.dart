import 'package:donation_flutter_app/controllers/donation_amount_controller.dart';
import 'package:donation_flutter_app/utils/functions/height_width/height_width.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DonationAmount extends StatelessWidget {
  List<String> amountList = ["50", "100", "150", "200"];


  final DonationAmountController amountController =
  Get.find<DonationAmountController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      String? selectedAmount = amountController.selectedAmount.value;
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          childAspectRatio:
          calculateWidth(0.3, context) / calculateHeight(0.06, context),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: amountList.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return ChoiceChip(
            selectedColor: const Color.fromRGBO(0, 72, 77, 1),
            showCheckmark: false,
            label: SizedBox(
              height: calculateHeight(0.06, context),
              width: calculateWidth(0.3, context),
              child: Center(
                child: Text(
                  '\$${amountList[index]}',
                  style: TextStyle(
                    color: selectedAmount == amountList[index]
                        ? Colors.white
                        : Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            onSelected: (isSelected) {
              selectedAmount = isSelected ? amountList[index] : null;
              // amountController.selectedAmount.value = selectedAmount!;
              if (isSelected) {
                amountController.setSelectedAmount(selectedAmount!);
              }
              print(amountController.selectedAmount.value);
            },
            selected: selectedAmount == amountList[index],
          );
        },
      );
    });
  }
}
