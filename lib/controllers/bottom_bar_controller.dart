import 'package:get/get.dart';

class BottomBarController extends GetxController{
  var selectesIndex = RxInt;

  @override
  void onInit() {
    super.onInit();
    selectesIndex = 0 as Type;
  }

  void setSelectedIndex(int index){
    selectesIndex = index as Type;
  }
}