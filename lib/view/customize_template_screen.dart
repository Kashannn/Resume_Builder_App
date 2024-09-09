import 'package:cvapp/utils/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/components/custom_button.dart';
import '../utils/constant/app_textstyle_constant.dart';
import 'customized_template_screen.dart';

class CustomizeTemplateScreen extends StatefulWidget {
  final List<String>? imagePaths;
  final int initialIndex;

  CustomizeTemplateScreen({
    Key? key,
    required this.imagePaths,
    required this.initialIndex,
  }) : super(key: key);

  @override
  State<CustomizeTemplateScreen> createState() =>
      _CustomizeTemplateScreenState();
}

class _CustomizeTemplateScreenState extends State<CustomizeTemplateScreen> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
  }

  //  designSize: const Size(393, 852),

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(393, 855));
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    // Rebuilds the widget with a new state on navigation back
    void _onTemplateSelected() {
      setState(() {
        currentIndex = widget.initialIndex;
      });
    }

    if (widget.imagePaths == null || widget.imagePaths!.isEmpty) {
      return SafeArea(
        child: Scaffold(
          body: Center(
            child: Text(
              'No images available',
              style: isDarkMode ? mStyleWhite20600 : mStyleBlack20600,
            ),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      _onTemplateSelected();
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    'CV Maker',
                    style: isDarkMode ? mStyleWhite20600 : mStyleBlack20600,
                  ),
                ],
              ),
              Text(
                'Professional',
                style: isDarkMode ? mStyleWhite12600 : mStyleBlack12600,
              ),
              SizedBox(height: 17.h),
              Container(
                height: 523.h,
                width: 404.w,
                decoration: BoxDecoration(
                  color: isDarkMode ? Color(0xFF151A25) : Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(
                    widget.imagePaths![currentIndex],
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100.w,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (currentIndex > 0) {
                            currentIndex--;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            isDarkMode ? Colors.grey[800] : AppColors.lightGray,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27.r),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        size: 30.sp,
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    width: 100.w,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF5BBBFF),
                          Color(0xFF005592),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(27.r),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (currentIndex < widget.imagePaths!.length - 1) {
                            currentIndex++;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27.r),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 30.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Center(
                child: CustomGradientButton(
                  onPressed: () {
                    // Pass the selected template's identifier to the next screen
                    Get.to(
                      () => CustomizedTemplateScreen(
                        templateIdentifier: 'Template${currentIndex + 1}',
                      ),
                    )?.then((_) {
                      _onTemplateSelected();
                    });
                  },
                  text: 'Customize Template',
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF5BBBFF),
                      Color(0xFF005592),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
