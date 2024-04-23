import 'package:get/get.dart';

import '../models/user/user.dart';

/*
   * @purpose :
   * controller class to handle all operations related Users Index
   *
   * it extends GetxController which provides functionality to use Observable
   * Int.
   *
   * @created by : Vedant Rana
   */
class UserController extends GetxController{
  Rx<User> user = Rx<User>(User());

  /*
   * @purpose :
   * get user details
   *
   * @parameter : No Parameter
   *
   * @return : void
   *
   * @created by : Vedant Rana
   */
  User get getUser => user.value;

  /*
   * @purpose :
   * set user details
   *
   * @parameter : No Parameter
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
