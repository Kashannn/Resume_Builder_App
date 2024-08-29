import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Allcontrollers/theme_changer_controller.dart';
import '../utils/components/custom_bottom_navigation_bar.dart';
import '../utils/constant/app_textstyle_constant.dart';
import '../utils/constant/app_theme.dart'; // Import the AppThemes class

class DarkScreen extends StatefulWidget {
  const DarkScreen({super.key});

  @override
  State<DarkScreen> createState() => _DarkScreenState();
}

class _DarkScreenState extends State<DarkScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChangerController>(context);
    bool isDarkMode = themeChanger.themeMode == ThemeMode.dark;

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: isDarkMode ? AppThemes.darkGradientBackground : null,
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Setting',
                style: isDarkMode ? mStyleWhite20600 : mStyleBlack20600,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dark Mode',
                    style: isDarkMode ? mStyleWhite16600 : mStyleBlack16600,
                  ),
                  Switch(
                    value: isDarkMode,
                    onChanged: (value) {
                      themeChanger.toggleTheme(value);
                    },
                    activeColor: isDarkMode ? Colors.white : Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
