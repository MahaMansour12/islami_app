import 'package:flutter/material.dart';

class Mytheme {
  static const Color primeLigth = Color(0xffB7935F);
  static const Color wihteColor = Color(0xffF8F8F8);
  static const Color primeDark = Color(0xff141A2E);
  static const Color blackColor = Color(0xff242424);
  static const Color yollowColor = Color(0xffFACC1D);
  static ThemeData lighttheme = ThemeData(
      cardColor: wihteColor,
      accentColor: primeLigth,
      primaryColor: primeLigth,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: blackColor),
        color: Colors.transparent,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: blackColor,
          fontWeight: FontWeight.w600,
        ),
        headline5: TextStyle(
          color: blackColor,
          fontWeight: FontWeight.w600,
        ),
        subtitle2: TextStyle(
          color: blackColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(size: 35),
        selectedLabelStyle: TextStyle(color: blackColor),
        selectedItemColor: blackColor,
        unselectedItemColor: wihteColor,
        showUnselectedLabels: false,
        showSelectedLabels: true,
      ));
  static ThemeData darkTheme = ThemeData(
      cardColor: primeDark,
      accentColor: yollowColor,
      primaryColor: primeDark,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: blackColor),
        color: Colors.transparent,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: wihteColor,
          fontWeight: FontWeight.w600,
        ),
        headline5: TextStyle(
          color: wihteColor,
          fontWeight: FontWeight.w600,
        ),
        subtitle2: TextStyle(
          color: yollowColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(size: 35),
        selectedLabelStyle: TextStyle(color: primeDark),
        selectedItemColor: yollowColor,
        unselectedItemColor: wihteColor,
        showUnselectedLabels: false,
        showSelectedLabels: true,
      ));
}
