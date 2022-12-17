import 'package:get/get.dart';

class TasbihController extends GetxController {
  RxInt value = 0.obs;
  void add() {
    value.value++;
  }

  void reset() {
    value.value = 0;
  }
}
