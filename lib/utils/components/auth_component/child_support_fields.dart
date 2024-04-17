import 'package:flutter/material.dart';

class ChildSupportFields extends StatefulWidget {
  const ChildSupportFields({super.key});

  @override
  State<ChildSupportFields> createState() => _ChildSupportFieldsState();
}

class _ChildSupportFieldsState extends State<ChildSupportFields> {
  @override
  Widget build(BuildContext context) {
    return     Column(
      children: [
        TextFormField(
          // controller: nameController,
          decoration: InputDecoration(
            hintText: "Name of child",
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
        ),
        const SizedBox(height: 10),
        TextFormField(
          //controller: addressesController,
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
              borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.5)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.5)),
            ),
            suffixIcon: IconButton(
              onPressed: () {
                // Handle IconButton onPressed event here
              },
              icon: Icon(Icons.place,color: Colors.black.withOpacity(0.5),),
            ),
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          // controller: mobileNumberController,
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
              borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.5)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.5)),
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
        ),




      ],
    );
  }
}
