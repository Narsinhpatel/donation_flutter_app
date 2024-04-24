import 'package:flutter/material.dart';

class PaymentMethodTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final int value;
  final int groupValue;
  final Function(int?) onChanged;

  const PaymentMethodTile({
    required this.imagePath,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
      ),
      child: RadioListTile(
        activeColor: const Color.fromRGBO(40, 201, 211, 1),
        controlAffinity: ListTileControlAffinity.trailing,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image(
                image: AssetImage(imagePath),
                  width: 30,
                height: 30,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(title),
            ),
          ],
        ),
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
      ),
    );
  }
}