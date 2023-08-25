import 'package:get/get.dart';

class MatteController extends GetxController {
  RxBool isMatte = false.obs;

  void changeMatte() {
    isMatte.value = !isMatte.value;
  }

  void setMatteTrue() {
    this.isMatte.value = true;
  }

  void setMatteFalse() {
    this.isMatte.value = false;
  }
}
