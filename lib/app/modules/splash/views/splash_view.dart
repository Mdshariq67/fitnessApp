import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashController controller = Get.find<SplashController>();

    return Scaffold(
      body: Obx(() => Stack(
            alignment: Alignment.center,
            children: [
              controller.isDone.value
                  ? Center(
                          child: Image.asset(
                      controller.logo.value,
                      width: 100,
                    ))
                      .animate()
                      .fadeIn(duration: 1000.ms)
                      .then(delay: 600.ms)
                      .slideX(begin: -0.07, end: 0.2)
                      .then(delay: 1000.ms)
                      .slideX(end: -0.3, duration: 1200.ms)
                      .then(delay: 200.ms)
                      .fadeOut(duration: 1000.ms)
                  : Container(),
              Center(
                      child: Image.asset(
                controller.pin.value,
                width: 100,
              ))
                  .animate()
                  .fadeIn(duration: 3000.ms)
                  .then(delay: 1200.ms)
                  .slideX(end: -0.2, duration: 2000.ms)
                  .callback(
                      duration: 600.ms,
                      callback: (_) {
                        controller.updateIsDone();
                      })
                  .then(delay: 6500.ms)
                  .slideX(end: 0.2)
                  .then(delay: 1000.ms)
                  .scaleXY(end: 10, duration: 1000.ms)
                  .then(delay: 1000.ms)
                  .callback(callback: (_) {
                Get.offNamed('/home');
              }),
              Positioned(
                bottom: 5,
                child: Text(
                  controller.logoText.value,
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              )
            ],
          )),
    );
  }

  Widget _buildAnimatedImage(String imagePath) {
    return Center(
      child: Image.asset(imagePath, fit: BoxFit.cover)
          .animate()
          .fadeIn(duration: 1000.ms)
          .then(delay: 1000.ms)
          .slideX(end: -0.2, duration: 1200.ms)
          .scaleXY(end: 1.05, duration: 1000.ms),
    );
  }
}
