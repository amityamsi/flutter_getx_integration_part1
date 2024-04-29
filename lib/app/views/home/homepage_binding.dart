import 'package:codemicros_getx_series/app/views/home/homepage_controller.dart';
import 'package:get/get.dart';

class HomepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomepageController());
  }
}
