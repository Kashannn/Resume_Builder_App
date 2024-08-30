import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constant/app_images_constant.dart';

class Template15 extends StatefulWidget {
  const Template15({super.key});

  @override
  State<Template15> createState() => _Template15State();
}

class _Template15State extends State<Template15> {
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 555.w,
                height: 120.h,
                decoration: BoxDecoration(
                  color: Color(0xFF1B1F24),
                  borderRadius: BorderRadius.circular(90.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 25.w, top: 5.h),
                            child: Image.asset(
                              AppImages.Template8ProfilePhoto,
                              width: 190.w,
                              height: 190.h,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '— BUSINESS COACH',
                                style: GoogleFonts.dmSans(
                                  fontSize: 12.sp,
                                  color: Color(
                                      0xFFFFC107), // Yellow color for 'BUSINESS COACH'
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                'Alex Moore',
                                style: GoogleFonts.dmSans(
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Signature
                    SvgPicture.asset(
                      AppImages.signature15,
                      width: 40.w,
                      height: 50.h,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250.w,
                    height: 660.h,
                    padding:
                        EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
                    color: Color(0xFFE5E5E5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Contact Section
                        Text(
                          "CONTACT",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Row(
                          children: [
                            Icon(Icons.email, color: Colors.black, size: 16.w),
                            SizedBox(width: 8.w),
                            Text(
                              "EMAIL",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          "alex@moore.com",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Row(
                          children: [
                            Icon(Icons.phone, color: Colors.black, size: 16.w),
                            SizedBox(width: 8.w),
                            Text(
                              "PHONE",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          "(598) 404 - 1789",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Row(
                          children: [
                            Icon(Icons.language,
                                color: Colors.black, size: 16.w),
                            SizedBox(width: 8.w),
                            Text(
                              "WEB",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          "www.alexmoore.com",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 24.h),
                        // Follow Me Section
                        Text(
                          "FOLLOW ME",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          "@alexmoore",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 16.w),
                            SvgPicture.asset(AppImages.twitter,
                                width: 10.w, height: 10.h, color: Colors.black),
                            SizedBox(width: 16.w),
                            SvgPicture.asset(AppImages.facebook,
                                width: 10.w, height: 10.h, color: Colors.black),
                            SizedBox(width: 16.w),
                            SvgPicture.asset(AppImages.instagram,
                                width: 10.w, height: 10.h, color: Colors.black),
                            SizedBox(width: 16.w),
                            SvgPicture.asset(AppImages.linkedin,
                                width: 10.w, height: 10.h, color: Colors.black),
                          ],
                        ),
                        SizedBox(height: 24.h),
                        // My Services Section
                        Text(
                          "MY SERVICES",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        _buildServiceItem("Business Consulting"),
                        _buildServiceItem("Growth Consulting"),
                        _buildServiceItem("Sales Consulting"),
                        _buildServiceItem("Hiring Consulting"),
                        _buildServiceItem("Management Consulting"),
                        _buildServiceItem("Finance Consulting"),
                        SizedBox(height: 24.h),
                        // Languages Section
                        Text(
                          "LANGUAGES",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        _buildLanguageItem("URDU"),
                        _buildLanguageItem("ENGLISH"),
                      ],
                    ),
                  ),
                  Container(
                    width: 330.w,
                    height: 660.h,
                    padding:
                        EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
                    color: Colors
                        .transparent, // Adjust the color or make it transparent
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // About Me Section
                        Text(
                          "ABOUT ME",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur adipiscing elit volutpat vestibulum vitae cursus enim eget elit tincidunt mauris semper platea egestas tempus pellentesque quam neque.",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: Colors.grey[800],
                          ),
                        ),
                        SizedBox(height: 24.h),
                        Divider(color: Colors.grey[400]),
                        SizedBox(height: 16.h),

                        // Education Section
                        Text(
                          "EDUCATION",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildEducationItem("Stanford", "2017 / 2020",
                                "Master of business"),
                            _buildEducationItem("MIT", "2013 / 2017",
                                "B.S of Digital Marketing"),
                            // _buildEducationItem("Harvard", "2009 / 2013", "B.S of Business"),
                          ],
                        ),
                        SizedBox(height: 24.h),
                        Divider(color: Colors.grey[400]),
                        SizedBox(height: 16.h),

                        // Work Experience Section
                        Text(
                          "WORK EXPERIENCE",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        _buildExperienceItem(
                          companyName: "Facebook",
                          jobTitle: "Head of Business",
                          duration: "2019 / Present",
                          description:
                              "Lorem ipsum dolor sit amet consectetur adipiscing elit vitae cursus enim eget elit tincidunt mauris, semper platea egestas tempus.",
                        ),
                        SizedBox(height: 16.h),
                        _buildExperienceItem(
                          companyName: "Google",
                          jobTitle: "Head of Marketing",
                          duration: "2018 / 2019",
                          description:
                              "Lorem ipsum dolor sit amet consectetur adipiscing elit volutpat vestibulum vitae cursus enim eget elit tincidunt mauris semper platea.",
                        ),
                        SizedBox(height: 16.h),
                        _buildExperienceItem(
                          companyName: "Twitter",
                          jobTitle: "Growth Marketer",
                          duration: "2017 / 2018",
                          description:
                              "Lorem ipsum dolor sit amet consectetur adipiscing elit volutpat vitae cursus enim eget elit tincidunt mauris semper quam neque.",
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

  Widget _buildServiceItem(String service) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        children: [
          Icon(Icons.circle, size: 6.w, color: Colors.yellow),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              service,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageItem(String language) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        children: [
          Icon(Icons.circle, size: 6.w, color: Colors.yellow),
          SizedBox(width: 8.w),
          Text(
            language,
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEducationItem(
      String institution, String duration, String degree) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              institution,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w700,
                fontSize: 10.sp,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 5.w),
            Text(
              "–",
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w400,
                fontSize: 11.sp,
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              duration,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w400,
                fontSize: 11.sp,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h), // Adjust the spacing between rows
        Text(
          degree,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildExperienceItem({
    required String companyName,
    required String jobTitle,
    required String duration,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          companyName,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          jobTitle,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          duration,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          description,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: Colors.grey[800],
          ),
        ),
      ],
    );
  }
}
