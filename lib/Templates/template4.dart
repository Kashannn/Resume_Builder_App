import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/constant/app_images_constant.dart';

class Template4 extends StatefulWidget {
  const Template4({super.key});

  @override
  State<Template4> createState() => _Template4State();
}

class _Template4State extends State<Template4> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //height: 798.h,
                width: 595.w,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF242424),
                      Color(0xFF343434),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.w, vertical: 20.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //header section
                      SizedBox(
                        width: 525.w,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 40.r,
                                  backgroundImage: AssetImage(
                                    AppImages.profilePicture,
                                  ),
                                ),
                                SizedBox(
                                  width: 25.w,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Hello, I am Peter.',
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        )),
                                    Text(
                                      'A Product Designer.',
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 160.h,
                            width: 152.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Skills',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: Color(0xFF242424),
                                      border: Border.all(
                                        color: Colors.white,
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          color: Color(0xFF646464),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: SvgPicture.asset(
                                            AppImages.product,
                                            height: 14.h,
                                            width: 14.w,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Product Design',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: Color(0xFF242424),
                                      border: Border.all(
                                        color: Colors.white,
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          color: Color(0xFF646464),
                                        ),
                                        child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: SvgPicture.asset(
                                              AppImages.search,
                                              height: 14.h,
                                              width: 14.w,
                                            )),
                                      ),
                                      Text(
                                        'UX Research',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: Color(0xFF242424),
                                      border: Border.all(
                                        color: Colors.white,
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          color: Color(0xFF646464),
                                        ),
                                        child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: SvgPicture.asset(
                                              AppImages.phone,
                                              height: 14.h,
                                              width: 14.w,
                                            )),
                                      ),
                                      Text(
                                        'UI/UX Design',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: Color(0xFF242424),
                                      border: Border.all(
                                        color: Colors.white,
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          color: Color(0xFF646464),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: SvgPicture.asset(
                                            AppImages.icon,
                                            height: 14.h,
                                            width: 14.h,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'UI/UX Design',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 160.h,
                            width: 314.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'About Me',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet consectetur adipiscing elit neque tempor malesuada adipiscing congue diam quis orci amet porttitor blandit amet nullam sit elit, purus blandit non ut non quam curabitur.',
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                Text(
                                  'Quis orci amet porttitor blandit amet nullam sit elit purus blandit non ut non quam curabitur lorem ipsum dolor sit amet consectetur adipiscing elit neque tempor, malesuada adipiscing congue diam.',
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                Divider(
                                  color: Colors.white,
                                  thickness: 1.0,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 160.h,
                                width: 152.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Follow me',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '@peterdesigner',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 32.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          color: Color(0xFF242424),
                                          border: Border.all(
                                            color: Colors.white,
                                          )),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            AppImages.facebook,
                                            height: 14.h,
                                            width: 14.h,
                                          ),
                                          Text(
                                            'Facebook',
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 32.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          color: Color(0xFF242424),
                                          border: Border.all(
                                            color: Colors.white,
                                          )),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            AppImages.twitter,
                                            height: 14.h,
                                            width: 14.h,
                                          ),
                                          Text(
                                            'Twitter',
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 32.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          color: Color(0xFF242424),
                                          border: Border.all(
                                            color: Colors.white,
                                          )),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            AppImages.instagram,
                                            height: 14.h,
                                            width: 14.h,
                                          ),
                                          Text(
                                            'Instagram',
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 32.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          color: Color(0xFF242424),
                                          border: Border.all(
                                            color: Colors.white,
                                          )),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            AppImages.linkedin,
                                            height: 14.h,
                                            width: 14.h,
                                          ),
                                          Text(
                                            'LinkedIn',
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 160.h,
                                width: 150.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Past experience',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 45.h,
                                      width: 109.w,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'VP of Design',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'Google, LLC.',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'Jan 2022 --Present',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 45.h,
                                      width: 109.w,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Senior Product Designer',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'Meta, Inc.',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '2018--2020',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 45.h,
                                      width: 109.w,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'UX Researcher',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'Twitter, Inc.',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '2015--2018',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 160.h,
                                width: 150.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Education',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 45.h,
                                      width: 109.w,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'B.S Arts in Graphic design',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'Stanford university',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '2017--2020',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 45.h,
                                      width: 109.w,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Advanced UI Design',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'Caltech University',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '2018--2020',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 45.h,
                                      width: 109.w,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'B.S of Design',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'Hardvard University',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '2015--2018',
                                            style: TextStyle(
                                              fontSize: 11.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Divider(
                            color: Colors.white,
                            thickness: 1.0,
                          )
                        ],
                      ),
                      SizedBox(
                        // height: 60.h,
                        width: 525.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Contact',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Email',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontFamily: 'Manrope',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'contact@petermoore.com',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontFamily: 'Manrope',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Phone Number',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '(487) 540 - 9804',
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Portfolio',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'www.petermoore.com',
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
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
