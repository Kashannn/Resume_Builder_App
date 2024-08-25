import 'package:cvapp/Templates/template10.dart';
import 'package:cvapp/utils/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/components/custom_button.dart';
import '../utils/constant/app_textstyle_constant.dart';

class CustomizedTemplateScreen extends StatefulWidget {
  final String? imagePath;
  const CustomizedTemplateScreen({super.key, this.imagePath});
  @override
  State<CustomizedTemplateScreen> createState() =>
      _CustomizedTemplateScreenState();
}

class _CustomizedTemplateScreenState extends State<CustomizedTemplateScreen> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => Get.back(),
                      icon: Icon(Icons.arrow_back)),
                  Text(
                    'Customize Template',
                    style: isDarkMode ? mStyleWhite18600 : mStyleBlack18600,
                  ),
                  Spacer(),
                  Container(
                    height: 40.h,
                    width: 112.w,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF5BBBFF),
                          Color(0xFF005592),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.file_download_outlined,
                          color: Colors.white,
                          size: 15.sp,
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          'Download',
                          style: mStyleWhite12600,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'TIP: ',
                          style:
                              isDarkMode ? mStyleWhite12600 : mStyleBlack12600,
                        ),
                        TextSpan(
                          text: 'Click on any text/image to edit.',
                          style: isDarkMode
                              ? mStyleWhite12600
                              : mStyleBlack12600.copyWith(
                                  color: AppColors.lightGray2),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 520.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFF151A25),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: SizedBox(
                    child: Template10()),
              ),
              Spacer(),
              CustomGradientButton(
                onPressed: () {

                },
                text: 'Save Info',
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFAAAAAA),
                    Color(0xFFAAAAAA),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomGradientButton(
                onPressed: () {
                  // Button action
                },
                text: 'Add Saved Info',
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF5BBBFF),
                    Color(0xFF005592),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
