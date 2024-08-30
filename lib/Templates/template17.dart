import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constant/app_images_constant.dart';

class Template17 extends StatefulWidget {
  const Template17({super.key});

  @override
  State<Template17> createState() => _Template17State();
}

class _Template17State extends State<Template17> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 595.w,
          height: 842.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1D1D1D), Color(0xFF484343)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Container(
                width: 595.w,
                height: 90.h,
                color: Colors.transparent,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.w),
                      child: CircleAvatar(
                        radius: 55.r,
                        backgroundColor: Colors.blueAccent,
                        child: CircleAvatar(
                          radius: 50.r,
                          backgroundImage: AssetImage(AppImages.profilePicture),
                        ),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    // Name and Title
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "John Carter",
                          style: GoogleFonts.sourceCodePro(
                            fontWeight: FontWeight.w700,
                            fontSize: 24.sp,
                            color: Colors.blueAccent,
                          ),
                        ),
                        Text(
                          "Product designer",
                          style: GoogleFonts.sourceCodePro(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    // Contact Information
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Email",
                          style: GoogleFonts.sourceCodePro(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "contact@johncarter.com",
                          style: GoogleFonts.sourceCodePro(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          "Phone Number",
                          style: GoogleFonts.sourceCodePro(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "(487) 540 - 9804",
                          style: GoogleFonts.sourceCodePro(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 16.w),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Container(
                      width: 250.w,
                      height: 690.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 250.w,
                            height: 150.h,
                            child: Padding(
                              padding: EdgeInsets.all(8.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Title
                                  Text(
                                    "About John Carter",
                                    style: GoogleFonts.sourceCodePro(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.sp,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  // Divider
                                  Container(
                                    width: 250.w,
                                    height: 1.h,
                                    color: Colors.grey[600],
                                  ),
                                  SizedBox(height: 8.h),
                                  // Description Text
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dictumst sagittis nisi interdum mauris. Nulla hendrerit elementum ullamcorper rhoncus sed at. Odio ut sit tempor sit. Donec id elit feugiat cursus.",
                                    style: GoogleFonts.sourceCodePro(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: Colors.grey[300],
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 250.w,
                            height: 373.h,
                            // color: Colors.yellow, // Background color for demonstration; adjust or remove as needed
                            child: Padding(
                              padding: EdgeInsets.all(8.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Section Title
                                  Text(
                                    "Education",
                                    style: GoogleFonts.sourceCodePro(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.sp,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  // Divider
                                  Container(
                                    width: 250.w,
                                    height: 1.h,
                                    color: Colors.grey[600],
                                  ),
                                  SizedBox(height: 8.h),
                                  // Education Item 1
                                  _buildEducationItem(
                                    duration: "2017 - 2022",
                                    degree: "Master of Digital Arts",
                                    institution: "Stanford university",
                                  ),
                                  SizedBox(height: 16.h),
                                  // Education Item 2
                                  _buildEducationItem(
                                    duration: "2013 - 2017",
                                    degree: "B.S of User Experience",
                                    institution: "Hardvard university",
                                  ),
                                  SizedBox(height: 16.h),
                                  // Education Item 3
                                  _buildEducationItem(
                                    duration: "2009 - 2013",
                                    degree: "B.S Arts in Graphic Design",
                                    institution: "MIT university",
                                  ),
                                  SizedBox(height: 16.h),
                                  // Education Item 4
                                  _buildEducationItem(
                                    duration: "2006 - 2009",
                                    degree: "B.S of Design",
                                    institution: "MIT",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 250.w,
                            height: 40.h,
                            // color: Colors.yellow, // Background color for demonstration; adjust or remove as needed
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Username
                                Text(
                                  "@johncarter",
                                  style: GoogleFonts.sourceCodePro(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: Colors.grey[500],
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                // Social Media Links
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Twitter",
                                      style: GoogleFonts.sourceCodePro(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Facebook",
                                      style: GoogleFonts.sourceCodePro(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Instagram",
                                      style: GoogleFonts.sourceCodePro(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 250.w,
                    height: 690.h,
                    // color: Colors.grey, // Background color for demonstration; adjust or remove as needed
                    child: Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Section Title: Work Experience
                          Text(
                            "Work Experience",
                            style: GoogleFonts.sourceCodePro(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                              color: Colors.blueAccent,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          // Divider
                          Container(
                            width: 250.w,
                            height: 1.h,
                            color: Colors.grey[600],
                          ),
                          SizedBox(height: 8.h),
                          _buildExperienceItem(
                            company: "FACEBOOK",
                            duration: "2020 - 2021",
                            title: "Lead Product Designer",
                            description:
                                "Quis orci amet porttitor blandit amet nullam sit elit purus blandit non ut non.",
                          ),
                          SizedBox(height: 16.h),
                          _buildExperienceItem(
                            company: "GOOGLE",
                            duration: "2019 - 2020",
                            title: "Lead Product Designer",
                            description:
                                "Ultrices proin elit, tellus euismod leo id volutpat cursus integer faucibus.",
                          ),
                          SizedBox(height: 16.h),
                          _buildExperienceItem(
                            company: "TWITTER",
                            duration: "2018 - 2019",
                            title: "Lead Product Designer",
                            description:
                                "Lorem ipsum dolor sit amet justo, rhoncus felis dolor sit.",
                          ),
                          SizedBox(height: 16.h),
                          // Section Title: Skills
                          Text(
                            "Skills",
                            style: GoogleFonts.sourceCodePro(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                              color: Colors.blueAccent,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          // Divider
                          Container(
                            width: 250.w,
                            height: 1.h,
                            color: Colors.grey[600],
                          ),
                          SizedBox(height: 8.h),
                          // Skills List
                          _buildSkillItem("UI Design"),
                          _buildSkillItem("UX Design"),
                          _buildSkillItem("Product Design"),
                          _buildSkillItem("User Research"),
                          _buildSkillItem("Design Thinking"),
                          SizedBox(height: 16.h),
                          // Section Title: Skills (Second)
                          Text(
                            "Skills",
                            style: GoogleFonts.sourceCodePro(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                              color: Colors.blueAccent,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          // Divider
                          Container(
                            width: 250.w,
                            height: 1.h,
                            color: Colors.grey[600],
                          ),
                          SizedBox(height: 8.h),
                          _buildSkillItem("URDU"),
                          _buildSkillItem("English"),
                        ],
                      ),
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

  Widget _buildEducationItem({
    required String duration,
    required String degree,
    required String institution,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          duration,
          style: GoogleFonts.sourceCodePro(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: Colors.grey[500],
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          degree,
          style: GoogleFonts.sourceCodePro(
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
            color: Colors.white,
          ),
        ),
        Text(
          institution,
          style: GoogleFonts.sourceCodePro(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: Colors.grey[500],
          ),
        ),
      ],
    );
  }

  Widget _buildExperienceItem({
    required String company,
    required String duration,
    required String title,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          company,
          style: GoogleFonts.sourceCodePro(
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          duration,
          style: GoogleFonts.sourceCodePro(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: Colors.grey[500],
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          title,
          style: GoogleFonts.sourceCodePro(
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          description,
          style: GoogleFonts.sourceCodePro(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: Colors.grey[300],
          ),
        ),
      ],
    );
  }

  Widget _buildSkillItem(String skill) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Text(
        "• $skill",
        style: GoogleFonts.sourceCodePro(
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: Colors.white,
        ),
      ),
    );
  }
}
