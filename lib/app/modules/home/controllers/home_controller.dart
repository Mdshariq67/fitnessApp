import 'dart:developer';

import 'package:fitnesshealth/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var steps = 0.obs;
  var calories = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    fetchGoogleFitData();
  }

  void fetchGoogleFitData() async {
    await Future.delayed(const Duration(seconds: 1));

    steps.value = 1200;
    calories.value = 230.5;
  }

  void navigateToHome() async {
    log("Navigating to home...");
    await Future.delayed(const Duration(seconds: 3));
    log("Navigating to home now!");
    Get.offNamed(Routes.SPLASH);
  }
}
