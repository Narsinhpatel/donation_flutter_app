import 'package:get/get.dart';

import '../models/user/user.dart';

/*
   * @purpose :
   * controller class to handle all operations related User Signup Options
   *
   * it extends GetxController which provides functionality to use Observable
   * RxString
   *
   * @created by : Vedant Rana
   */
class SignUpOptionController extends GetxController {
  RxString currentSignUpOption = RxString("");

  /*
   * @purpose : getter method to get signup type selected by user for signup
   *
   * @parameter : No Parameter
   *
   * @return : String (sign up type : 'supporter', 'need support', 'business account')
   *
   * @created by : Vedant Rana
   */
  String get getCurrentSignUpOption => currentSignUpOption.value;

  /*
   * @purpose : setter method to set signup type selected by user whenever it is required
   *
   * @parameter : String (sign up type : 'supporter', 'need support', 'business account')
   *
   * @return : void
   *
   * @created by : Vedant Rana
   */
  void setCurrentSignUpOption(String signUpOption) {
    currentSignUpOption.value = signUpOption;
  }
}
