import 'package:flutter/material.dart';

import '../Constants/colors.dart';

ThemeData appTheme() {
  return ThemeData(
    hintColor: AppColors.grey,
    dividerColor: AppColors.grey,
    brightness: Brightness.light,
    primaryColor: AppColors.darkgreen,
    visualDensity: VisualDensity.comfortable,
    primaryIconTheme: const IconThemeData(color: AppColors.darkgreen),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.black,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: AppColors.green2,
      iconTheme: IconThemeData(color: AppColors.white),
      actionsIconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: const TextTheme(
      button: TextStyle(
        fontSize: 14,
        color: AppColors.black,
        fontWeight: FontWeight.normal,
      ),
      caption: TextStyle(
        fontSize: 13,
        color: AppColors.black,
        fontWeight: FontWeight.normal,
      ),
      overline: TextStyle(
        fontSize: 14,
        color: AppColors.black,
        fontWeight: FontWeight.normal,
      ),
      bodyText1: TextStyle(
        fontSize: 14,
        color: AppColors.black,
        fontWeight: FontWeight.normal,
      ),
      bodyText2: TextStyle(
        fontSize: 12,
        color: AppColors.black,
        fontWeight: FontWeight.normal,
      ),
      headline1: TextStyle(
        fontSize: 17,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 16.5,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        fontSize: 16,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
      headline4: TextStyle(
        fontSize: 15.5,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
      headline5: TextStyle(
        fontSize: 15,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
      headline6: TextStyle(
        fontSize: 14.5,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
      subtitle1: TextStyle(
        fontSize: 14.5,
        color: AppColors.black,
        fontWeight: FontWeight.w600,
      ),
      subtitle2: TextStyle(
        fontSize: 14.5,
        color: AppColors.black,
        fontWeight: FontWeight.w500,
      ),
    ),
    primaryTextTheme: const TextTheme(
      button: TextStyle(
        fontSize: 14,
        color: AppColors.black,
        fontWeight: FontWeight.normal,
      ),
      caption: TextStyle(
        fontSize: 13,
        color: AppColors.black,
        fontWeight: FontWeight.normal,
      ),
      overline: TextStyle(
        fontSize: 14,
        color: AppColors.black,
        fontWeight: FontWeight.normal,
      ),
      bodyText1: TextStyle(
        fontSize: 14,
        color: AppColors.black,
        fontWeight: FontWeight.normal,
      ),
      bodyText2: TextStyle(
        fontSize: 12,
        color: AppColors.black,
        fontWeight: FontWeight.normal,
      ),
      headline1: TextStyle(
        fontSize: 17,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 16.5,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        fontSize: 16,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
      headline4: TextStyle(
        fontSize: 15.5,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
      headline5: TextStyle(
        fontSize: 15,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
      headline6: TextStyle(
        fontSize: 14.5,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
      subtitle1: TextStyle(
        fontSize: 14.5,
        color: AppColors.black,
        fontWeight: FontWeight.w600,
      ),
      subtitle2: TextStyle(
        fontSize: 14.5,
        color: AppColors.black,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
