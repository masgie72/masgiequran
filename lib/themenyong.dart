import 'package:flutter/material.dart';
import 'package:quran_indon/warnanyong.dart';

class ThemeNyong {
  static final ThemeData lightmode = ThemeData(
    primaryColor: WarnaNyong.warnadasarterang,
    canvasColor: WarnaNyong.warnadasarterang,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: WarnaNyong.warnaireng,
      unselectedItemColor: WarnaNyong.warnaputih,
      backgroundColor: WarnaNyong.warnadasarterang,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: WarnaNyong.warnaireng,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: WarnaNyong.warnaireng,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: TextStyle(
        color: WarnaNyong.warnaireng,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: WarnaNyong.warnaireng,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
