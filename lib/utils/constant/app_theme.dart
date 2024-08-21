import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    textTheme: Typography.englishLike2018.apply(
      fontSizeFactor: 1.sp,
      bodyColor: Colors.black,
      displayColor: Colors.black,
    ),
    scaffoldBackgroundColor: Colors.white,
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: Typography.englishLike2018.apply(
      fontSizeFactor: 1.sp,
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.black,
  );

  static BoxDecoration darkGradientBackground = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xFF171717),
        Color(0xFF2D2D2D),
      ],
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
    ),
  );
}
