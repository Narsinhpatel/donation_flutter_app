import 'package:flutter/material.dart';
import 'package:get/get.dart';

displaySnackBar({required String title, required String message, required bool isError}){
  return  Get.snackbar(
    title,
    message,
    colorText: Colors.white,
    duration: const Duration(seconds: 2),
    backgroundColor: isError ? Colors.redAccent : Colors.deepPurpleAccent,
    icon: const Icon(Icons.add_alert),
  );
}