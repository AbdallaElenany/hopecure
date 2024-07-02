import 'package:flutter/material.dart';
import 'color.dart';

ThemeData themeArabic = ThemeData(
  useMaterial3: false,
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    displayLarge: TextStyle(height: 1.4, fontSize: 25, color: AppColor.black),
    ///////////////////////////////////////////////////////////////
    displayMedium: TextStyle(height: 1.4, fontSize: 18, color: AppColor.black),
    //////////////////////////////////////////////////////////////
    bodyLarge: TextStyle(
      height: 1.4,
      color: AppColor.black,
      fontSize: 16,
    ),
    ////////////////////////////////////////////////////////////////
    bodyMedium: TextStyle(height: 1.4, color: AppColor.black, fontSize: 14),
    ////////////////////////////////////////////////////////////////
    bodySmall: TextStyle(color: AppColor.black, fontSize: 12),
  ),
  primaryColor: Colors.white,
);
ThemeData themeEnglish = ThemeData(
  useMaterial3: false,
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    displayLarge: TextStyle(height: 1.4, fontSize: 25, color: AppColor.black),
    ///////////////////////////////////////////////////////////////
    displayMedium: TextStyle(height: 1.4, fontSize: 18, color: AppColor.black),
    //////////////////////////////////////////////////////////////
    bodyLarge: TextStyle(
      height: 1.4,
      color: AppColor.black,
      fontSize: 16,
    ),
    ////////////////////////////////////////////////////////////////
    bodyMedium: TextStyle(height: 1.4, color: AppColor.black, fontSize: 14),
    ////////////////////////////////////////////////////////////////
    bodySmall: TextStyle(color: AppColor.black, fontSize: 12),
  ),
  primaryColor: Colors.white,
  /*colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Colors.white,
  ),*/
);
