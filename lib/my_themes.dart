import 'package:flutter/material.dart';

class MyThemeData {
  static Color standardColor = Color(0xFFB7935F);
  static Color BlackColor = Color(0xFF242424);
  static final ThemeData lightTheme = ThemeData(
      primaryColor: standardColor,
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30, color: BlackColor, fontWeight: FontWeight.w700),
          headline2: TextStyle(
              fontSize: 25, color: BlackColor, fontWeight: FontWeight.w400)),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: BlackColor),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: BlackColor, unselectedItemColor: Colors.white));

  static final ThemeData darkTheme = ThemeData();
}
