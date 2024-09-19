import 'package:fitnesshealth/app/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Fit App',
      theme: AppThemes.lightTheme, // Light theme
      darkTheme: AppThemes.darkTheme, // Dark theme
      themeMode: ThemeMode.system,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
