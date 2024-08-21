import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:cvapp/view/customize_template_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/components/custom_bottom_navigation_bar.dart';
import '../utils/constant/app_colors.dart';
import '../utils/constant/app_textstyle_constant.dart';
import 'cv_template_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'CV marker',
                style: isDarkMode ? mStyleWhite20600 : mStyleBlack20600,
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Templates',
                    style: isDarkMode ? mStyleWhite16600 : mStyleBlack16600,
                  ),
                  SvgPicture.asset(
                    AppImages.icons,
                    color: isDarkMode ? Colors.white : AppColors.blackColor,
                    height: 24.h,
                    width: 24.w,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () => Get.to(CustomizeTemplateScreen()),
                child: Container(
                  height: 200.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    color: Color(0xFF151A25),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: CVTemplateScreen(),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
