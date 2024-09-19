import 'package:fitnesshealth/app/routes/app_pages.dart';
import 'package:get/get.dart';

import 'dart:developer'; // Import logging

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    log("SplashController initialized");
    navigateToHome();
  }

  void navigateToHome() async {
    log("Navigating to home...");
    await Future.delayed(const Duration(seconds: 3));
    log("Navigating to home now!");
    Get.offNamed(Routes.HOME);
  }
}
