import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constant/app_images_constant.dart';

class Template7 extends StatefulWidget {
  const Template7({super.key});

  @override
  State<Template7> createState() => _Template7State();
}

class _Template7State extends State<Template7> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 595.w,
          height: 842.h,
          color: Color(0xFF395B6D),
          child: Column(
            children: [
              Container(
                width: 595.w,
                height: 173.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 180.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(160.r),
                            topRight: Radius.circular(160.r),
                          ),
                          border: Border.all(
                            color: Colors.white,
                          )),
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFFFFFFF),
                        radius: 70.h,
                        backgroundImage: AssetImage(AppImages.profilePicture),
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Richard sanchez',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 38.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          margin: EdgeInsets.only(top: 4.h),
                          width: 120.w,
                          height: 2.h,
                          color: Colors.white,
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          'Photographer',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 295.w,
                    height: 625.h,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 13.w),
                          child: Container(
                            width: 220.w,
                            height: 150.h,
                            padding: EdgeInsets.symmetric(vertical: 8.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(120.r),
                                bottomLeft: Radius.circular(120.r),
                              ),
                              border: Border.all(
                                color: Color(0xFF3D586D),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.email,
                                    color: Color(0xFF3D586D), size: 20.sp),
                                SizedBox(height: 8.h),
                                Text(
                                  'hello@reallygreatsite.com',
                                  style: TextStyle(
                                    color: Color(0xFF3D586D),
                                    fontSize: 14.sp,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 8.h),
                                Icon(Icons.phone,
                                    color: Color(0xFF3D586D), size: 20.sp),
                                SizedBox(height: 8.h),
                                Text(
                                  '+123-456-7890',
                                  style: TextStyle(
                                    color: Color(0xFF3D586D),
                                    fontSize: 14.sp,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 8.h),
                                Icon(Icons.location_on,
                                    color: Color(0xFF3D586D), size: 20.sp),
                                SizedBox(height: 8.h),
                                Text(
                                  '123 Anywhere St., Any City',
                                  style: TextStyle(
                                    color: Color(0xFF3D586D),
                                    fontSize: 14.sp,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 50.h),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 3.w,
                                height: 290.h,
                                color: Color(0xFF3D586D),
                              ),
                              Container(
                                width: 220.w,
                                // padding: EdgeInsets.all(16.w),
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8.h),
                                      decoration: BoxDecoration(
                                        color: Color(0xFF3D586D),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20.r),
                                          bottomRight: Radius.circular(20.r),
                                        ),
                                      ),
                                      child: Text(
                                        'EDUCATION',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 12.h),
                                    Text(
                                      'Master of Media and Journalism',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 12.h),
                                    Text(
                                      'Wardiere university 2013-2016',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      'Master of Media and Journalism',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 12.h),
                                    Text(
                                      'Wardiere university 2019-2012',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                    SizedBox(height: 20.h),
                                    Container(
                                      width: double.infinity,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8.h),
                                      decoration: BoxDecoration(
                                        color: Color(0xFF3D586D),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20.r),
                                          bottomRight: Radius.circular(20.r),
                                        ),
                                      ),
                                      child: Text(
                                        'skills',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 12.h),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '• Communication',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.sp,
                                          ),
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          '• Time management',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.sp,
                                          ),
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          '• Organization',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.sp,
                                          ),
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          '• Technical skills',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.sp,
                                          ),
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          '• Creativity',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.sp,
                                          ),
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          '• Research',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.sp,
                                          ),
                                        ),
                                      ],
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
                  Container(
                    width: 295.w,
                    height: 625.h,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // About Me Section
                        Container(
                          width: 220.w,
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          decoration: BoxDecoration(
                            color: Color(0xFF3D586D),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.r),
                              bottomRight: Radius.circular(20.r),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'About Me',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.w),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet sem nec risus egestas accumsan. In enim nunc, tincidunt ut quam eget, luctus sollicitudin neque. Sed leo nisl, semper ac hendrerit a, sollicitudin in arcu.',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Color(0xFF3D586D),
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ),
                        // Experience Section
                        Container(
                          width: 220.w,
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          decoration: BoxDecoration(
                            color: Color(0xFF3D586D),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.r),
                              bottomRight: Radius.circular(20.r),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Experience',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Borcelle Studio',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Photographer',
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Color(0xFF3D586D),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '2021 - Present',
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Color(0xFF3D586D),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                '• Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet sem nec risus egestas accumsan. In enim nunc, tincidunt ut quam eget, luctus sollicitudin neque. Sed leo nisl, semper ac hendrerit a, sollicitudin in arcu.',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Color(0xFF3D586D),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                              SizedBox(height: 16.h),
                              Text(
                                'Borcelle Studio',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Photographer',
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Color(0xFF3D586D),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '2021 - Present',
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Color(0xFF3D586D),
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                '• Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet sem nec risus egestas accumsan. In enim nunc, tincidunt ut quam eget, luctus sollicitudin neque. Sed leo nisl, semper ac hendrerit a, sollicitudin in arcu.',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Color(0xFF3D586D),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Languages Section
                        Container(
                          width: 220.w,
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          decoration: BoxDecoration(
                            color: Color(0xFF3D586D),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.r),
                              bottomRight: Radius.circular(20.r),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Languages',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '• English (Fluent)',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Color(0xFF3D586D),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                              Text(
                                '• German (Basics)',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Color(0xFF3D586D),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                              Text(
                                '• Spanish (Intermediate)',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Color(0xFF3D586D),
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
    );
  }
}
