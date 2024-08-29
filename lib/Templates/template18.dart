import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constant/app_images_constant.dart';

class Template18 extends StatefulWidget {
  const Template18({super.key});

  @override
  State<Template18> createState() => _Template18State();
}

class _Template18State extends State<Template18> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 842.h,
          width: 595.w,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF5BBBFF),
                Color(0xFF005592),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60.h,
                  width: 204.w,
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'JOHN DEO',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          fontSize: 35.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'UI DESIGNER',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Color(0xFFE3E3E3),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Container(
                      height: 40.h,
                      width: 409.w,
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.phone, color: Colors.white),
                              SizedBox(width: 4.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start
                                ,
                                children: [
                                  Text(
                                    '+1 123 456 7890',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    '+1 321 654 9870',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      fontSize: 6.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.email, color: Colors.white),
                              SizedBox(width: 4.w),
                              Text(
                                'johndeo@gmail.com',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  fontSize: 6.sp,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.white),
                              SizedBox(width: 4.w),
                              Text(
                                'Apt. 352 375 Tonya Drive, Hirtheport, IA 54690',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  fontSize: 6.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 55.r,
                      backgroundImage: AssetImage(AppImages.profilePicture),
                    )
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 138.h,
                      width: 360.w,
                      padding: EdgeInsets.all(10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header with Icon
                          Row(
                            children: [
                              Icon(Icons.person,
                                  color: Colors.white, size: 12.sp),
                              SizedBox(width: 8.w),
                              Text(
                                'About Me',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 11.81.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          // Main Content
                          Text(
                            'A student majoring in Advertising and UI / UX design. In this CV is my design and marketing experience. Things I achieve through projects and works. Therefore, I want a job starting UI/UX as a career to stabilize and enhance my competence.',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 9.81.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              height: 13.74 / 9.81,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          // Secondary Content
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 7.85.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              height: 13.74 / 7.85,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 120.h,
                      width: 150.w,
                      padding: EdgeInsets.all(8.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header with Icon
                          Row(
                            children: [
                              Icon(Icons.school,
                                  color: Colors.white, size: 12.sp),
                              SizedBox(width: 4.w),
                              Text(
                                'Education',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 11.81.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.h),
                          // University 1
                          Text(
                            'University Of Economics & Finance',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 7.85.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              height: 13.74 / 7.85,
                            ),
                          ),
                          Text(
                            'Advertising Manager',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 7.85.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              height: 13.74 / 7.85,
                            ),
                          ),
                          Text(
                            '2020 - 2024',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 7.85.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              height: 13.74 / 7.85,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          // University 2
                          Text(
                            'University Of Science HCM',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 7.85.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              height: 13.74 / 7.85,
                            ),
                          ),
                          Text(
                            'UI/UX Design',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 7.85.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              height: 13.74 / 7.85,
                            ),
                          ),
                          Text(
                            '2018 - 2019',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 7.85.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              height: 13.74 / 7.85,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 172.h,
                      width: 360.w,
                      padding: EdgeInsets.all(10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header with Icon
                          Row(
                            children: [
                              Icon(Icons.work,
                                  color: Colors.white, size: 12.sp),
                              SizedBox(width: 8.w),
                              Text(
                                'Job Experience',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 11.81.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          // Job 1
                          Text(
                            '2021 - 2022',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 8.83.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              height: 13.74 / 8.83,
                            ),
                          ),
                          Text(
                            'Project Manager',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 8.83.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              height: 13.74 / 8.83,
                            ),
                          ),
                          Text(
                            'Harper and partners Inc.',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 8.83.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              height: 13.74 / 8.83,
                            ),
                          ),
                          Text(
                            'Maintained 100% client satisfaction by ensuring that all projects meet quality and budget standards',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 8.83.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              height: 13.74 / 8.83,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          // Job 2
                          Text(
                            '2020 - 2022',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 8.83.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              height: 13.74 / 8.83,
                            ),
                          ),
                          Text(
                            'Junior Project Manager',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 8.83.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              height: 13.74 / 8.83,
                            ),
                          ),
                          Text(
                            'Scheduster Digital Group',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 8.83.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              height: 13.74 / 8.83,
                            ),
                          ),
                          Text(
                            'Met 100% of project deadlines and objectives every year by efficiently communicating with managers and coordinating with employees',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 8.83.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              height: 13.74 / 8.83,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 47.h,
                      width: 150.w,
                      padding: EdgeInsets.all(5.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header with Icon
                          Row(
                            children: [
                              Icon(Icons.insert_link,
                                  color: Colors.white, size: 12.sp),
                              SizedBox(width: 4.w),
                              Text(
                                'Portfolio Link',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 11.81.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.h),
                          // Portfolio Link
                          Text(
                            'Enter Your Portfolio Link Here',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 8.83.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              height: 13.74 / 8.83,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 55.h,
                          width: 360.w,
                          padding: EdgeInsets.all(5.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Header with Icon
                              Row(
                                children: [
                                  Icon(Icons.work,
                                      color: Colors.white, size: 12.sp),
                                  SizedBox(width: 4.w),
                                  Text(
                                    'Expertise & Skills',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 11.81.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  buildSkillCircle('Photoshop'),
                                  buildSkillCircle('Illustrator'),
                                  buildSkillCircle('Figma'),
                                  buildSkillCircle('UI/UX Designing'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 107.h,
                      width: 150.w,
                      padding: EdgeInsets.all(5.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.sports_handball,
                                  color: Colors.white, size: 12.sp),
                              SizedBox(width: 4.w),
                              Text(
                                'Hobbies',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 11.81.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildHobbyItem('Reading'),
                              buildHobbyItem('Playing Chess'),
                            ],
                          ),
                          SizedBox(height: 4.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildHobbyItem('Swimming'),
                              buildHobbyItem('Traveling'),
                            ],
                          ),
                          SizedBox(height: 4.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildHobbyItem('Hiking'),
                              buildHobbyItem('Watching Movies'),
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
      ),
    );
  }
}

Widget buildSkillCircle(String skillName) {
  return Column(
    children: [
      Container(
        width: 50.w,
        height: 50.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(0.1), // Background for circle
        ),
        child: Center(
          child: Text(
            skillName,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 6.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildHobbyItem(String hobby) {
  return Text(
    hobby,
    style: TextStyle(
      fontFamily: 'Inter',
      fontSize: 8.83.sp,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
}
