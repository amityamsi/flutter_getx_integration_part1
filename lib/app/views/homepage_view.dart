import 'package:codemicros_getx_series/app/views/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomepageView extends StatelessWidget {
  const HomepageView({super.key});

  @override
  Widget build(BuildContext context) {
    HomepageController homepageController = Get.put(HomepageController());

    return Scaffold(
      body: Obx(
        () => Center(
          child: Text(
            homepageController.counter.value.toString(),
            style: const TextStyle(fontSize: 45.0),
          ),
        ),
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            homepageController.updateCounterValue();
          },
          child: const Text("Add")),
    );
  }
}
