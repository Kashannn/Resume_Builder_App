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
  bool showExportOptions = false;
  bool isPdfSelected = true;
  bool isPngSelected = false;
  bool isJpgSelected = false;

  final List<Color> gradientColors = [Color(0xFF5BBBFF), Color(0xFF005592)];

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
                'Settings',
                style: isDarkMode ? mStyleWhite20600 : mStyleBlack20600,
              ),
              SizedBox(height: 20.h),
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
              SizedBox(height: 20.h),
              Divider(color: isDarkMode ? Colors.white : Colors.grey),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  setState(() {
                    showExportOptions = !showExportOptions;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Export Settings',
                          style:
                              isDarkMode ? mStyleWhite16600 : mStyleBlack16600,
                        ),
                        Text(
                          'Export As',
                          style: isDarkMode
                              ? mStyleWhite12600.copyWith(color: Colors.grey)
                              : mStyleBlack12600.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                    Icon(
                      showExportOptions ? Icons.expand_less : Icons.expand_more,
                      color: isDarkMode ? Colors.blue : Colors.blue,
                    ),
                  ],
                ),
              ),
              if (showExportOptions) ...[
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'PDF',
                      style: isDarkMode ? mStyleWhite16600 : mStyleBlack16600,
                    ),
                    _buildGradientCheckbox(isPdfSelected, (value) {
                      setState(() {
                        isPdfSelected = value!;
                      });
                    }),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Png',
                      style: isDarkMode ? mStyleWhite16600 : mStyleBlack16600,
                    ),
                    _buildGradientCheckbox(isPngSelected, (value) {
                      setState(() {
                        isPngSelected = value!;
                      });
                    }),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Jpg',
                      style: isDarkMode ? mStyleWhite16600 : mStyleBlack16600,
                    ),
                    _buildGradientCheckbox(isJpgSelected, (value) {
                      setState(() {
                        isJpgSelected = value!;
                      });
                    }),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGradientCheckbox(bool isSelected, Function(bool?) onChanged) {
    return Container(
      width: 20.w,
      height: 20.h,
      decoration: isSelected
          ? BoxDecoration(
              gradient: LinearGradient(
                colors: gradientColors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            )
          : null,
      child: Checkbox(
        value: isSelected,
        onChanged: onChanged,
        activeColor: Colors.transparent,
        checkColor: Colors.white,
      ),
    );
  }
}
