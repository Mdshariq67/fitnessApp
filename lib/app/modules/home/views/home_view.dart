import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeMode themeMode =
        Get.isDarkMode ? ThemeMode.dark : ThemeMode.light;
    final Color textColor =
        themeMode == ThemeMode.dark ? Colors.white : Colors.black;
    final Color bgcolor = themeMode == ThemeMode.light
        ? const Color.fromRGBO(196, 196, 196, 1)
        : const Color.fromRGBO(138, 138, 138, 1);
    final Color cardcolor = themeMode == ThemeMode.light
        ? const Color.fromRGBO(240, 240, 240, 1)
        : const Color.fromRGBO(50, 50, 50, 1);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hi!',
          style: TextStyle(
              color: textColor, fontWeight: FontWeight.w700, fontSize: 32),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 0,
              color: cardcolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() => Text(
                          'Steps: ${controller.steps}',
                          style: TextStyle(
                              fontSize: 16,
                              color: textColor,
                              fontWeight: FontWeight.w400),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SimpleAnimationProgressBar(
                                height: 15,
                                width: 300,
                                backgroundColor: bgcolor,
                                foregrondColor: textColor,
                                ratio: 0.9,
                                direction: Axis.horizontal,
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: const Duration(seconds: 3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '0',
                                    style: TextStyle(
                                        color: textColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10),
                                  ),
                                  Text(
                                    'Goal: 15000',
                                    style: TextStyle(
                                        color: textColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Image.asset(
                            'assets/foot.png',
                            color: textColor,
                            height: 30,
                          ),
                        )
                      ],
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 8),
                    //   child: Row(
                    //     children: [
                    //       Text(
                    //         '0',
                    //         style: TextStyle(
                    //             color: textColor,
                    //             fontWeight: FontWeight.w700,
                    //             fontSize: 10),
                    //       )
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 0,
              color: cardcolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() => Text(
                          'Calories Burned: ${controller.calories} kcal',
                          style: TextStyle(
                              fontSize: 16,
                              color: textColor,
                              fontWeight: FontWeight.w400),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SimpleAnimationProgressBar(
                                height: 15,
                                width: 300,
                                backgroundColor: bgcolor,
                                foregrondColor: textColor,
                                ratio: 0.5,
                                direction: Axis.horizontal,
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: const Duration(seconds: 3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '0',
                                    style: TextStyle(
                                        color: textColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10),
                                  ),
                                  Text(
                                    'Goal: 1000',
                                    style: TextStyle(
                                        color: textColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          child: Image.asset(
                            'assets/cal.png',
                            color: textColor,
                            height: 30,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
