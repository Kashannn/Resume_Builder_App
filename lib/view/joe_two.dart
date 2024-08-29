import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../Allcontrollers/theme_changer_controller.dart';
import '../utils/components/custom_bottom_navigation_bar.dart';
import '../utils/constant/app_textstyle_constant.dart';
import '../utils/constant/app_theme.dart'; // Import the AppThemes class

class JoeTwo extends StatefulWidget {
  const JoeTwo({super.key});

  @override
  State<JoeTwo> createState() => _JoeTwoState();
}

class _JoeTwoState extends State<JoeTwo> {
  final List<String> _items = ["My Info", "Lorem ipsum", "Lorem ipsum"];

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChangerController>(context);
    bool isDarkMode = themeChanger.themeMode == ThemeMode.dark;

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: isDarkMode
              ? AppThemes.darkGradientBackground
              : null, // Apply the gradient in dark mode
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Saved Info',
                style: isDarkMode ? mStyleWhite20600 : mStyleBlack20600,
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        color: isDarkMode ? Colors.black26 : Colors.white,
                        child: ListTile(
                          title: Text(
                            _items[index],
                            style: isDarkMode
                                ? mStyleWhite16600
                                : mStyleBlack16600,
                          ),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.more_vert,
                              color: isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                            ),
                            onPressed: () {
                              // Handle the overflow menu action here
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
