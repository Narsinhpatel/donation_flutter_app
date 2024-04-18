import 'package:flutter/material.dart';

import '../../utils/components/donation/carousel_component.dart';

class DonationPage extends StatefulWidget {
  const DonationPage({super.key});

  @override
  State<DonationPage> createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("asdvpq"),
      ),
      body: Column(
        children: [
          Container(
            height: 600,
            decoration: BoxDecoration(
            color: Colors.black
          ),
            child: CarouselImages(),
          ),
        ],
      ),
    );
  }
}
