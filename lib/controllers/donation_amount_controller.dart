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
class DonationAmountController extends GetxController{
  RxString selectedAmount = RxString('');

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
  void setSelectedAmount(String selectedAmountByChip){
    selectedAmount.value = selectedAmountByChip;
  }
}