import 'package:codemicros_getx_series/app/views/testing/testing_controller.dart';
import 'package:get/get.dart';

class TestingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TestingController());
  }
}
