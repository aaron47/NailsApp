import 'package:get/get.dart';

class MatteController extends GetxController {
  RxBool isMatte = true.obs;

  void changeMatte() {
    isMatte.value = !isMatte.value;
  }

  void setMatteTrue() {
    isMatte.value = true;
  }

  void setMatteFalse() {
    isMatte.value = false;
  }
}
