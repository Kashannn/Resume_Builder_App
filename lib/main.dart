import 'package:cvapp/Templates/template11.dart';
import 'package:cvapp/utils/constant/app_theme.dart';
import 'package:cvapp/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'Allcontrollers/theme_changer_controller.dart';
import 'Templates/template15.dart';
import 'Templates/template17.dart';
import 'Templates/template18.dart';
import 'Templates/template20.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      splitScreenMode: true,
      builder: (_, child) {
        return ChangeNotifierProvider(
          create: (_) => ThemeChangerController(),
          child: Consumer<ThemeChangerController>(
            builder: (context, themeChanger, _) {
              return GetMaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Cv App',
                theme: AppThemes.lightTheme,
                darkTheme: AppThemes.darkTheme,
                themeMode: themeChanger.themeMode,
                home: child,
              );
            },
          ),
        );
      },
      child: Template11(),
    );
  }
}
