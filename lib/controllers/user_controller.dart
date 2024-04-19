import 'package:get/get.dart';

import '../models/user/user.dart';

class UserController extends GetxController{
  Rx<User> user = Rx<User>(User());

  User get getUser => user.value;

  void setUser(User newUser) {
    user.value = newUser;
  }
}
