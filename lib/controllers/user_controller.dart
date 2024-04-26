import 'package:get/get.dart';

import '../models/user/user.dart';

/*
   * @purpose :
   * controller class to handle all operations related Users login and Signup
   *
   * it extends GetxController which provides functionality to use Observable
   * User object to observe and store the details of user in it.
   *
   * @created by : Vedant Rana
   */
class UserController extends GetxController{
  Rx<User> user = Rx<User>(User());

  /*
   * @purpose : getter method to get user details from observable User object
   *
   * @parameter : No Parameter
   *
   * @return : User object whose value is setted from RxUser's value
   *
   * @created by : Vedant Rana
   */
  User get getUser => user.value;

  /*
   * @purpose :
   * setter function which takes login and signup details and set it to RxUser
   *
   * @parameter : User object
   *
   * @return : void
   *
   * @created by : Vedant Rana
   */
  void setUser(User newUser) {
    user.value = newUser;
    print(user.value.userName);
    update();
  }
}
