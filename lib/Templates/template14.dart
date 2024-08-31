import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constant/app_images_constant.dart';

class Template14 extends StatefulWidget {
  const Template14({super.key});

  @override
  State<Template14> createState() => _Template14State();
}

class _Template14State extends State<Template14> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: 595.w,
              height: 842.h,
              color: Colors.white,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 70.h, left: 20.w),
                        child: Container(
                          width: 250.w,
                          height: 600.h,
                          // color: Colors.yellow,
                          child: Stack(
                            children: [
                              SvgPicture.asset(
                                AppImages.pictemplate14,
                                width: 250.w,
                                height: 600.h,
                                fit: BoxFit.cover,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.w,
                                    ),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 90.r,
                                          backgroundImage: AssetImage(
                                              AppImages.profilePicture),
                                        ),
                                        SizedBox(height: 20.h),
                                        Text(
                                          'JOHNNY OLANNI',
                                          style: GoogleFonts.inter(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'DESIGNER & DEVELOPER',
                                          style: GoogleFonts.inter(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 20.h),
                                        Padding(
                                          padding: EdgeInsets.only(right: 25.w),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              _buildSectionHeader('CONTACT'),
                                              SizedBox(height: 10.h),
                                              _buildContactItem(Icons.home,
                                                  'CITY ADDRESS, STATE, LOCATION'),
                                              _buildDivider(),
                                              _buildContactItem(Icons.email,
                                                  'YOUR_EMAIL_ADD@GMAIL.COM'),
                                              _buildDivider(),
                                              _buildContactItem(Icons.phone,
                                                  '+18 2767 9470 1808\n+18 9153 3990 0008'),
                                              _buildDivider(),
                                              _buildContactItem(Icons.language,
                                                  'WWW.COMPANY-NAME.COM'),
                                              SizedBox(height: 20.h),
                                              _buildSectionHeader('FOLLOW ME'),
                                              SizedBox(height: 10.h),
                                              _buildContactItem(Icons.facebook,
                                                  'www.Your_Facebook_Link.com'),
                                              _buildContactItem(
                                                  Icons.youtube_searched_for,
                                                  'www.Your_Youtube_Link.com'),
                                              SizedBox(height: 20.h),
                                              _buildSectionHeader('REFERENCE'),
                                              SizedBox(height: 10.h),
                                              _buildReference(),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 325.w,
                    height: 790.h,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 45.h,
                        ),
                        SizedBox(
                          width: 325.w,
                          height: 100.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'LANGUAGES',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  _buildLanguageSkill('FRENCH'),
                                  _buildLanguageSkill('SPANISH'),
                                  _buildLanguageSkill('ENGLISH'),
                                  _buildLanguageSkill('CHINESE'),
                                  _buildLanguageSkill('ARABIC'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 325.w,
                          height: 150.h,
                          padding: EdgeInsets.all(10.w),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 20.w,
                                    height: 20.h,
                                    decoration: BoxDecoration(
                                      color: Colors.purple, // The purple circle
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Expanded(
                                    child: Container(
                                      height: 20.h,
                                      decoration: BoxDecoration(
                                        color: Colors
                                            .black, // The black rounded rectangle
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.w),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'PROFILE',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  height: 1.5,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'Sed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel, euismod vel, velit. Pellentesque egestas sem. Suspendisse commodo ullamcorper magna.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 325.w,
                          height: 255.h,
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 20.w,
                                    height: 20.h,
                                    decoration: BoxDecoration(
                                      color: Colors.purple, // The purple circle
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Expanded(
                                    child: Container(
                                      height: 20.h,
                                      decoration: BoxDecoration(
                                        color: Colors
                                            .black, // The black rounded rectangle
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.w),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'WORK EXPERIENCE',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              _buildExperienceItem(
                                title: 'Retail Commission Sales',
                                year: '2012',
                                description:
                                    'Sed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel, euismod vel, velit. Pellentesque egestas sem. Suspendisse commodo ullamcorper magna.',
                              ),
                              SizedBox(height: 10.h),
                              _buildExperienceItem(
                                title: 'Computer Network Architect',
                                year: '2014',
                                description:
                                    'Sed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel, euismod vel, velit. Pellentesque egestas sem. Suspendisse commodo ullamcorper magna.',
                              ),
                              SizedBox(height: 10.h),
                              _buildExperienceItem(
                                title: 'Hardware Engineer',
                                year: '2016',
                                description:
                                    'Sed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel, euismod vel, velit. Pellentesque egestas sem. Suspendisse commodo ullamcorper magna.',
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 325.w,
                          height: 200.h,
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 20.w,
                                    height: 20.h,
                                    decoration: BoxDecoration(
                                      color: Colors.purple, // The purple circle
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Expanded(
                                    child: Container(
                                      height: 20.h,
                                      decoration: BoxDecoration(
                                        color: Colors
                                            .black, // The black rounded rectangle
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.w),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'EDUCATION',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              _buildEducationItem(
                                title: 'BA in Business Administration',
                                year: '2000',
                                description:
                                    'Sed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel, euismod vel, velit. Pellentesque egestas sem. Suspendisse commodo ullamcorper magna.',
                              ),
                              SizedBox(height: 10.h),
                              Divider(
                                color: Colors.black,
                              ),
                              _buildEducationItem(
                                title: 'BA in Communication Studies',
                                year: '2010',
                                description:
                                    'Sed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel, euismod vel, velit. Pellentesque egestas sem. Suspendisse commodo ullamcorper magna.',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SvgPicture.asset(
                AppImages.template141,
                width: 595.w,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SvgPicture.asset(
                AppImages.template142,
                width: 595.w,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationItem(
      {required String title,
      required String description,
      required String year}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 40.w,
          child: Text(
            year,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                description,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildExperienceItem(
      {required String title,
      required String description,
      required String year}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 40.w,
          child: Text(
            year,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                description,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLanguageSkill(String language) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircularProgressIndicator(
              value: 0.8,
              strokeWidth: 4.w,
              backgroundColor: Colors.grey.shade300,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
            ),
            Container(
              width: 20.w,
              height: 20.h,
              decoration: BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Text(
          language,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Row(
      children: [
        Container(
          width: 20.w,
          height: 20.h,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 5.w),
        Expanded(
          child: Container(
            height: 20.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContactItem(IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20.sp, color: Colors.black),
        SizedBox(width: 10.w),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Divider(color: Colors.white, height: 20.h, thickness: 1.w);
  }

  Widget _buildReference() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'John Q. Public',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          'Phone: +18 9153 3990 0008',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12.sp,
          ),
        ),
        Text(
          'Email: Your_email_add@sample.com',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12.sp,
          ),
        ),
      ],
    );
  }
}
