import 'package:codemicros_getx_series/app/routes/app_routes.dart';
import 'package:codemicros_getx_series/app/views/home/homepage_binding.dart';
import 'package:codemicros_getx_series/app/views/home/homepage_view.dart';
import 'package:codemicros_getx_series/app/views/testing/testing_binding.dart';
import 'package:codemicros_getx_series/app/views/testing/testing_view.dart';
import 'package:get/get.dart';

abstract class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    /// Home page
    GetPage(
        name: Routes.home,
        page: () => const HomepageView(),
        binding: HomepageBinding()),

// Testing page
    GetPage(
        name: Routes.testing,
        page: () => const TestingView(),
        binding: TestingBinding()),
  ];
}
