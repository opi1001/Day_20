import 'package:get/get.dart';

class HomePageController extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update();
  }

  void decrement() {
    0 < count ? count-- : null;
    update();
  }
}
