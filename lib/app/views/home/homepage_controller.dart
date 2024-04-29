import 'package:get/get.dart';

class HomepageController extends GetxController {
  final RxInt counter = 0.obs;

  updateCounterValue() {
    counter.value = counter.value + 1;
  }
}
