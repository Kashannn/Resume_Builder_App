import 'package:cvapp/utils/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../utils/components/custom_button.dart';
import '../utils/constant/app_textstyle_constant.dart';
import 'customized_template_screen.dart';
import 'cv_template_screen.dart';

class CustomizeTemplateScreen extends StatefulWidget {
  String filePath;
  CustomizeTemplateScreen({required this.filePath, super.key});

  @override
  State<CustomizeTemplateScreen> createState() =>
      _CustomizeTemplateScreenState();
}

class _CustomizeTemplateScreenState extends State<CustomizeTemplateScreen> {
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
                  children: [
                    IconButton(
                        onPressed: () => Get.back(), icon: Icon(Icons.arrow_back)),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'CV marker',
                      style: isDarkMode ? mStyleWhite20600 : mStyleBlack20600,
                    ),
                  ],
                ),
                Text(
                  'Professional',
                  style: isDarkMode ? mStyleWhite12600 : mStyleBlack12600,
                ),
                SizedBox(
                  height: 17.h,
                ),
                Container(
                  height: 523.h,
                  width: 404.w,
                  // decoration: BoxDecoration(
                  //   color: Color(0xFF151A25),
                  //   borderRadius: BorderRadius.circular(10.r),
                  // ),
                  child: PDFView(
                    filePath: widget.filePath,

                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100.w,
                      child: ElevatedButton(
                        onPressed: () {},
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
                    SizedBox(
                      width: 10.w,
                    ),
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
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.r),
                          ),
                        ),
                        child: Icon(
                          size: 30.sp,
                          Icons.arrow_forward,
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
                        Get.to(CustomizedTemplateScreen());
                      },
                      text: 'Customize Template',
                      // icon: Icons.download,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF5BBBFF),
                          Color(0xFF005592),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}

