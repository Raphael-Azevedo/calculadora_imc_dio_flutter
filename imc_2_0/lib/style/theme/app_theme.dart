import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imc_2_0/style/color/app_color.dart';

class AppTheme {
  ThemeData lightTheme() {
    ThemeData theme = ThemeData(
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          color: AppColor.primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColor.accent,
        ),
        backgroundColor: AppColor.accent,
        foregroundColor: AppColor.accent,
      ),
      tabBarTheme: const TabBarTheme(
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: AppColor.primaryColor),
        ),
        labelColor: AppColor.greyLight,
      ),
      textTheme: TextTheme(
        headlineSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColor.greyText,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          padding:
              MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all<TextStyle?>(
            const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          padding:
              MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
        ),
      ),
    );

    return theme;
  }
}
