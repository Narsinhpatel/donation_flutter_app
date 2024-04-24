import 'package:flutter/material.dart';

class PaymentSummaryWidget extends StatelessWidget {
  final String subtotal;
  final String tax;
  final String total;

  const PaymentSummaryWidget({
    Key? key,
    required this.subtotal,
    required this.tax,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildItemRow('Subtotal', subtotal),
        _buildItemRow('Tax', tax),
        _buildItemRow('Total', total),
      ],
    );
  }

  Widget _buildItemRow(String label, String value) {
    return   Column(
      children: [

        Container(
          padding: const EdgeInsets.all(10),
          decoration:  BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey.withOpacity(0.3),
                width: 1.0,
              ),
            ),
          ),
          child:  Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
               label,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              Text(
             value,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),


      ],




    );
  }
}
