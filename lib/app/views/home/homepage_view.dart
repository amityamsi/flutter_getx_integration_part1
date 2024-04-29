import 'package:codemicros_getx_series/app/routes/app_routes.dart';
import 'package:codemicros_getx_series/app/views/home/homepage_controller.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                homepageController.counter.value.toString(),
                style: const TextStyle(fontSize: 45.0),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.testing);
                  },
                  child: const Text("Go to Testing Screen"))
            ],
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
