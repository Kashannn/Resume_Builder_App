import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constant/app_images_constant.dart';

class Template8 extends StatefulWidget {
  const Template8({super.key});

  @override
  State<Template8> createState() => _Template8State();
}

class _Template8State extends State<Template8> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              width: 595.w,
              height: 798.h,
              child: Column(
                children: [
                  Container(
                    height: 180.h,
                    width: 595.w,
                    decoration: BoxDecoration(
                      color: Color(0xFF1B1F24),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 225.h,
                          width: 225.w,
                          decoration: const BoxDecoration(
                              // color: Colors.cyan,
                              ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image(
                                  image: AssetImage(AppImages.profilePicture)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 13.w,
                        ),
                        Container(
                          height: 125.h,
                          width: 322.w,
                          decoration: const BoxDecoration(
                              // color: Colors.cyan,
                              ),
                          child: SizedBox(
                            height: 68.h,
                            width: 223.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "I’m John, a",
                                  style: TextStyle(
                                    fontFamily: 'SpaceGrotesk',
                                    color: Color(0xFF97FFC2),
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Web Developer",
                                  style: TextStyle(
                                    fontFamily: 'SpaceGrotesk',
                                    color: Color(0xFF97FFC2),
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 37.h,
                                      width: 137.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "@johncarter",
                                            style: TextStyle(
                                              fontFamily: 'SpaceGrotesk',
                                              color: Color(0xFF97FFC2),
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SvgPicture.asset(
                                                  AppImages.twitter),
                                              SvgPicture.asset(
                                                  AppImages.facebook),
                                              SvgPicture.asset(
                                                  AppImages.instagram),
                                              SvgPicture.asset(
                                                  AppImages.linkedin),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 600.h,
                    width: 595.w,
                    decoration: const BoxDecoration(
                      color: Color(0xFF232B35),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 15.h),
                          child: Container(
                            height: 628.h,
                            width: 268.w,
                            decoration: BoxDecoration(
                              color: Color(0xFF1B1F24),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 10.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 95.h,
                                    width: 230.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Container(
                                    height: 170.h,
                                    width: 177.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25.h,
                                  ),
                                  Container(
                                    height: 121.h,
                                    width: 157.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Container(
                                    height: 97.h,
                                    width: 237.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 494.h,
                          width: 267.w,
                          decoration: const BoxDecoration(
                            color: Colors.yellow,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 15.h,
                                width: 125.w,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                              ),
                              Container(
                                height: 92.h,
                                width: 267.w,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                              ),
                              Container(
                                height: 92.h,
                                width: 267.w,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                              ),
                              Container(
                                height: 92.h,
                                width: 267.w,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                              ),
                              Container(
                                height: 92.h,
                                width: 267.w,
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
