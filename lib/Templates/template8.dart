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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 595.w,
                height: 798.h,
                child: Column(
                  children: [
                    Container(
                      height: 160.h,
                      width: 595.w,
                      decoration: BoxDecoration(
                        color: Color(0xFF1B1F24),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 200.h,
                            width: 225.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image(
                                  image: AssetImage(
                                    AppImages.Template8ProfilePhoto,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 70.h,
                                width: 322.w,
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
                                    ],
                                  ),
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
                                            SvgPicture.asset(AppImages.twitter),
                                            SvgPicture.asset(AppImages.facebook),
                                            SvgPicture.asset(AppImages.instagram),
                                            SvgPicture.asset(AppImages.linkedin),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 638.h,
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
                                    SizedBox(
                                      height: 95.h,
                                      width: 230.w,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 40.w,
                                              child: Divider(
                                                color: Color(0xFFFFFFFF),
                                                thickness: 2.h,
                                              ),
                                            ),
                                            Text(
                                              "About Me",
                                              style: TextStyle(
                                                fontFamily: 'SpaceGrotesk',
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF97FFC2),
                                                fontSize: 16.sp,
                                              ),
                                            ),
                                            Text(
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit fames turpis pretium bibendum nisl est sagittis aliquam pretium nunc curabitur est in nulla id volutpat et nenatis at lacus.",
                                              style: TextStyle(
                                                fontFamily: 'SpaceGrotesk',
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFFC3CAD5),
                                                fontSize: 9.sp,
                                              ),
                                            )
                                          ]),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    SizedBox(
                                      height: 170.h,
                                      width: 177.w,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 40.w,
                                              child: Divider(
                                                color: Color(0xFFFFFFFF),
                                                thickness: 2.h,
                                              ),
                                            ),
                                            Text(
                                              "My education",
                                              style: TextStyle(
                                                fontFamily: 'SpaceGrotesk',
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF97FFC2),
                                                fontSize: 16.sp,
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Ca Institute of Technology",
                                                  style: TextStyle(
                                                    fontFamily: 'SpaceGrotesk',
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFFC3CAD5),
                                                    fontSize: 9.sp,
                                                  ),
                                                ),
                                                Text(
                                                  "/",
                                                  style: TextStyle(
                                                    fontFamily: 'SpaceGrotesk',
                                                    fontWeight: FontWeight.w900,
                                                    color: Color(0xFF075FE4),
                                                    fontSize: 15.sp,
                                                  ),
                                                ),
                                                Text(
                                                  "2017 - 2020",
                                                  style: TextStyle(
                                                    fontFamily: 'SpaceGrotesk',
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFFC3CAD5),
                                                    fontSize: 9.sp,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Text(
                                              "Master Computer Engineering",
                                              style: TextStyle(
                                                fontFamily: 'SpaceGrotesk',
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFFFFFFFF),
                                                fontSize: 10.sp,
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Ca Institute of Technology",
                                                  style: TextStyle(
                                                    fontFamily: 'SpaceGrotesk',
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFFC3CAD5),
                                                    fontSize: 9.sp,
                                                  ),
                                                ),
                                                Text(
                                                  "/",
                                                  style: TextStyle(
                                                    fontFamily: 'SpaceGrotesk',
                                                    fontWeight: FontWeight.w900,
                                                    color: Color(0xFF075FE4),
                                                    fontSize: 15.sp,
                                                  ),
                                                ),
                                                Text(
                                                  "2017 - 2020",
                                                  style: TextStyle(
                                                    fontFamily: 'SpaceGrotesk',
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFFC3CAD5),
                                                    fontSize: 9.sp,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Text(
                                              "Master Computer Engineering",
                                              style: TextStyle(
                                                fontFamily: 'SpaceGrotesk',
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFFFFFFFF),
                                                fontSize: 10.sp,
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Ca Institute of Technology",
                                                  style: TextStyle(
                                                    fontFamily: 'SpaceGrotesk',
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFFC3CAD5),
                                                    fontSize: 9.sp,
                                                  ),
                                                ),
                                                Text(
                                                  "/",
                                                  style: TextStyle(
                                                    fontFamily: 'SpaceGrotesk',
                                                    fontWeight: FontWeight.w900,
                                                    color: Color(0xFF075FE4),
                                                    fontSize: 15.sp,
                                                  ),
                                                ),
                                                Text(
                                                  "2017 - 2020",
                                                  style: TextStyle(
                                                    fontFamily: 'SpaceGrotesk',
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFFC3CAD5),
                                                    fontSize: 9.sp,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Text(
                                              "Master Computer Engineering",
                                              style: TextStyle(
                                                fontFamily: 'SpaceGrotesk',
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFFFFFFFF),
                                                fontSize: 10.sp,
                                              ),
                                            )
                                          ]),
                                    ),
                                    SizedBox(
                                      height: 25.h,
                                    ),
                                    SizedBox(
                                      height: 121.h,
                                      width: 157.w,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 40.w,
                                            child: Divider(
                                              color: Color(0xFFFFFFFF),
                                              thickness: 2.h,
                                            ),
                                          ),
                                          Text(
                                            "Contact information",
                                            style: TextStyle(
                                              fontFamily: 'SpaceGrotesk',
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFF97FFC2),
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                          Text(
                                            "Email",
                                            style: TextStyle(
                                              fontFamily: 'SpaceGrotesk',
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFFC3CAD5),
                                              fontSize: 9.sp,
                                            ),
                                          ),
                                          Text(
                                            "contact@johncarter.com",
                                            style: TextStyle(
                                              fontFamily: 'SpaceGrotesk',
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFFC3CAD5),
                                              fontSize: 9.sp,
                                            ),
                                          ),
                                          Text(
                                            "Call:",
                                            style: TextStyle(
                                              fontFamily: 'SpaceGrotesk',
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFFC3CAD5),
                                              fontSize: 9.sp,
                                            ),
                                          ),
                                          Text(
                                            "(414) 977 - 048",
                                            style: TextStyle(
                                              fontFamily: 'SpaceGrotesk',
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFFC3CAD5),
                                              fontSize: 9.sp,
                                            ),
                                          ),
                                          Divider(
                                            color: Color(0xFFFFFFFF),
                                            thickness: 2.h,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    SizedBox(
                                      height: 97.h,
                                      width: 237.w,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 40.w,
                                            child: Divider(
                                              color: Color(0xFFFFFFFF),
                                              thickness: 2.h,
                                            ),
                                          ),
                                          Text(
                                            "Skills",
                                            style: TextStyle(
                                              fontFamily: 'SpaceGrotesk',
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFF97FFC2),
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SvgPicture.asset(
                                                      AppImages.java),
                                                  SizedBox(height: 5.h),
                                                  Text("Java",
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'SpaceGrotesk',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 10.sp,
                                                      ))
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SvgPicture.asset(
                                                      AppImages.html),
                                                  SizedBox(height: 5.h),
                                                  Text("Html /Css",
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'SpaceGrotesk',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 10.sp,
                                                      ))
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SvgPicture.asset(
                                                      AppImages.react),
                                                  SizedBox(height: 5.h),
                                                  Text("React Java",
                                                      style: TextStyle(
                                                        fontFamily:
                                                            'SpaceGrotesk',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Color(0xFFFFFFFF),
                                                        fontSize: 10.sp,
                                                      ))
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SvgPicture.asset(AppImages.web),
                                                  SizedBox(height: 5.h),
                                                  Text(
                                                    "Web Flutter",
                                                    style: TextStyle(
                                                      fontFamily: 'SpaceGrotesk',
                                                      fontWeight: FontWeight.w700,
                                                      color: Color(0xFFFFFFFF),
                                                      fontSize: 10.sp,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 494.h,
                            width: 267.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 30.h,
                                  width: 130.w,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 40.w,
                                        child: Divider(
                                          color: Color(0xFF97FFC2),
                                          thickness: 2.h,
                                        ),
                                      ),
                                      Text(
                                        "Past Experience",
                                        style: TextStyle(
                                          fontFamily: 'SpaceGrotesk',
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF97FFC2),
                                          fontSize: 16.sp,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 92.h,
                                  width: 267.w,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Google',
                                            style: TextStyle(
                                              fontFamily: 'SpaceGrotesk',
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                          Text(
                                            'Jan 2021 / Present',
                                            style: TextStyle(
                                              fontFamily: 'SpaceGrotesk',
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Head of Engineering at Google',
                                        style: TextStyle(
                                          fontFamily: 'SpaceGrotesk',
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet consectet adipiscing elit et et est eget tortor lacus aliquam pulvinar senectus ut sapien type specimen book. It has survived not only five centuries.',
                                        style: TextStyle(
                                          fontFamily: 'SpaceGrotesk',
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                      Divider(
                                        color: Color(0xFF5D6C83),
                                        thickness: 1.5.h,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 92.h,
                                  width: 267.w,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Google',
                                            style: TextStyle(
                                              fontFamily: 'SpaceGrotesk',
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                          Text(
                                            'Jan 2021 / Present',
                                            style: TextStyle(
                                              fontFamily: 'SpaceGrotesk',
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Head of Engineering at Google',
                                        style: TextStyle(
                                          fontFamily: 'SpaceGrotesk',
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet consectet adipiscing elit et et est eget tortor lacus aliquam pulvinar senectus ut sapien type specimen book. It has survived not only five centuries.',
                                        style: TextStyle(
                                          fontFamily: 'SpaceGrotesk',
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                      Divider(
                                        color: Color(0xFF5D6C83),
                                        thickness: 1.5.h,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 92.h,
                                  width: 267.w,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Google',
                                            style: TextStyle(
                                              fontFamily: 'SpaceGrotesk',
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                          Text(
                                            'Jan 2021 / Present',
                                            style: TextStyle(
                                              fontFamily: 'SpaceGrotesk',
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Head of Engineering at Google',
                                        style: TextStyle(
                                          fontFamily: 'SpaceGrotesk',
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet consectet adipiscing elit et et est eget tortor lacus aliquam pulvinar senectus ut sapien type specimen book. It has survived not only five centuries.',
                                        style: TextStyle(
                                          fontFamily: 'SpaceGrotesk',
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                      Divider(
                                        color: Color(0xFF5D6C83),
                                        thickness: 1.5.h,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 92.h,
                                  width: 267.w,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Jan 2021 / Present',
                                            style: TextStyle(
                                              fontFamily: 'SpaceGrotesk',
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Head of Engineering at Google',
                                        style: TextStyle(
                                          fontFamily: 'SpaceGrotesk',
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet consectet adipiscing elit et et est eget tortor lacus aliquam pulvinar senectus ut sapien type specimen book. It has survived not only five centuries.',
                                        style: TextStyle(
                                          fontFamily: 'SpaceGrotesk',
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFFFFFFFF),
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                      Divider(
                                        color: Color(0xFF5D6C83),
                                        thickness: 1.5.h,
                                      )
                                    ],
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
      ),
    );
  }
}
