import 'package:get/get.dart';

class SplashController extends GetxController {
  var isDone = false.obs;
  var logo = 'assets/logo.png'.obs;
  var pin = 'assets/pin.png'.obs;
  var logoText = 'Fitness'.obs;

  void updateIsDone() {
    isDone.value = true;
  }
}
