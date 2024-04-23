
import 'package:flutter/material.dart';

double calculateHeight(double height, BuildContext context){
  final screenHeight = MediaQuery.of(context).size.height;
  return screenHeight * height;
}

double calculateWidth(double width, BuildContext context){
  final screenHeight = MediaQuery.of(context).size.width;
  return screenHeight * width;
}