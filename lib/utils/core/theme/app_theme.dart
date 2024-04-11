import 'package:flutter/material.dart';
import 'package:taxi_passenger_app/utils/color/app_colors.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primeryColor,
      textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: "SF Pro Display"),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    )),
    textTheme: const TextTheme(
      labelMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: AppColors.primeryColor,
          fontFamily: "SF Pro Display"),
      headlineLarge: TextStyle(
          fontSize: 35,
          color: AppColors.primeryColor,
          fontFamily: "SF Pro Display"),
      headlineMedium: TextStyle(
          fontSize: 25,
          color: AppColors.primeryColor,
          fontFamily: "SF Pro Display"),
      displayLarge: TextStyle(
          fontSize: 25,
          color: AppColors.primeryColor,
          fontFamily: "SF Pro Display"),
      displayMedium: TextStyle(
          fontSize: 20,
          color: AppColors.primeryColor,
          fontFamily: "SF Pro Display"),
      titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.primeryColor,
          fontFamily: "SF Pro Display"),
      titleMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: AppColors.primeryColor,
          fontFamily: "SF Pro Display"),
      titleSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: AppColors.primeryColor,
          fontFamily: "SF Pro Display"),
      bodyLarge: TextStyle(
          fontSize: 20, color: AppColors.black, fontFamily: "SF Pro Display"),
      bodyMedium: TextStyle(
          fontSize: 14, color: AppColors.black, fontFamily: "SF Pro Display"),
      bodySmall: TextStyle(
          fontSize: 12, color: AppColors.black, fontFamily: "SF Pro Display"),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(
          fontSize: 14, color: AppColors.grey, fontFamily: "SF Pro Display"),
      floatingLabelStyle: const TextStyle(
          color: AppColors.primeryColor, fontFamily: "SF Pro Display"),
      contentPadding:
          const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 5),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: AppColors.primeryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.red),
      ),
    ),
  );
}
