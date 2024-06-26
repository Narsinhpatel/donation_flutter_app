import 'package:get/get.dart';

/*
   * @purpose :
   * controller class to handle all operations related selected Index
   *
   * it extends GetxController which provides functionality to use Observable
   * Int.
   *
   * @created by : Vedant Rana
   */
class BottomBarController extends GetxController{
  var selectesIndex = RxInt;

  @override
  void onInit() {
    super.onInit();
    selectesIndex = 0 as Type;
  }

  /*
   * @purpose :
   * set selected index
   *
   * @parameter : No Parameter
   *
   * @return : void
   *
   * @created by : Vedant Rana
   */
  void setSelectedIndex(int index){
    selectesIndex = index as Type;
  }
}