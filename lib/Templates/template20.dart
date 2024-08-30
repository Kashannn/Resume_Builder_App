import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Template20 extends StatefulWidget {
  const Template20({super.key});

  @override
  State<Template20> createState() => _Template20State();
}

class _Template20State extends State<Template20> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 595.w,
          height: 842.h,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: 595.w,
                height: 248.h,
                color: Color(0xFFF8F6FA),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 202.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(130.r),
                        color: Colors.blue,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(130.r),
                        child: Image.asset(
                          AppImages.profilePicture,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 280.w,
                      height: 248.h,
                      padding: EdgeInsets.all(16.w),
                      // color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Name
                          Text(
                            "John Deo",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
                              fontSize: 28.sp,
                              color: Color(0xFF5BBBFF),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          // UI Designer Button
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4.h, horizontal: 12.w),
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Text(
                              "UI DESIGNER",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h),
                          // Profile Text
                          Text(
                            "PROFILE",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Container(
                            width: 40.w,
                            height: 2.h,
                            color: Colors.purple,
                          ),
                          SizedBox(height: 8.h),
                          // Description
                          Text(
                            "A student majoring in Advertising and UI / UX design. In this CV is my design and marketing experience. Things I achieve through projects and works. Therefore, I want a job starting UI/UX as a career to stabilize and enhance my competence.",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.normal,
                              fontSize: 14.sp,
                              color: Color(0xFF4D4D4D),
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.black12,
                    width: 250.w,
                    height: 550.h,
                  ),
                  Container(
                    color: Colors.black12,
                    width: 300.w,
                    height: 500.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 300.w,
                          height: 207.h,
                          color: Colors.blue,
                          child: Column(
                            children: [

                            ],
                          ),
                        ),
                        Container(
                          width: 300.w,
                          height: 60.h,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 200.w,
                          height: 105.h,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 180.w,
                          height: 92.h,
                          color: Colors.blue,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
