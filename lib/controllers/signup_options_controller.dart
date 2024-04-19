import 'package:get/get.dart';

import '../models/user/user.dart';

class SignUpOptionController extends GetxController{
  RxString currentSignUpOption = RxString("");

  String get getCurrentSignUpOption => currentSignUpOption.value;

  void setCurrentSignUpOption(String signUpOption) {
    currentSignUpOption.value = signUpOption;
  }
}
