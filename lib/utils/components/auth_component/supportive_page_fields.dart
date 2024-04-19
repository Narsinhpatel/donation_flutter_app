import 'package:flutter/material.dart';

class SupportiveTextFields extends StatefulWidget {
  const SupportiveTextFields({Key? key}) : super(key: key);

  @override
  State<SupportiveTextFields> createState() => _SupportiveTextFieldsState();
}

class _SupportiveTextFieldsState extends State<SupportiveTextFields> {
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          // controller: nameController,
          decoration: InputDecoration(
            hintText: "Name",
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
        const SizedBox(height: 10),
        TextFormField(
          controller: addressController,
          decoration: InputDecoration(
            hintText: "Address",
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
            suffixIcon: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text(
                        'Locate my Address Automatically',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Ignore',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1F878E),
                            minimumSize: const Size(100, 30),
                            padding: const EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              addressController.text = "Ahmedabad, Gujarat";
                            });
                            Navigator.of(context).pop();
                          },
                          child: const Text('Allow',
                            style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: Icon(
                Icons.place,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          // controller: mobileNumberController,
          decoration: InputDecoration(
            hintText: "Mobile Number",
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
      ],
    );
  }
}
