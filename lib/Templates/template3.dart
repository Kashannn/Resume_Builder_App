import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constant/app_images_constant.dart';

class Template3 extends StatefulWidget {
  const Template3({super.key});

  @override
  State<Template3> createState() => _Template3State();
}

class _Template3State extends State<Template3> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 595.w,
          ///height: 842.h,
          color: Colors.black,
          child: Column(
            children: [
              Container(
                width: 595.w,
                height: 90.h,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 87.w,
                      height: 87.h,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(AppImages.profilePicture),
                      ),
                    ),
                    SizedBox(
                      width: 209.w,
                      height: 78.h,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 8.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 30.w,
                              height: 2.h,
                              color: Color(0xFF00C781),
                              margin: EdgeInsets.only(bottom: 8.h),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "i'm ",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 24.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "john moore,\n",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "a digital designer.",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24.sp,
                                      color: Color(0xFF00C781), // Green color
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 178.w,
                      height: 47.h,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 8.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Username Text
                            Text(
                              "@johnmoore",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                _buildSocialIcon(AppImages.facebook7),
                                _buildSocialIcon(AppImages.dribble7),
                                _buildSocialIcon(AppImages.behance7),
                                _buildSocialIcon(AppImages.instagram7),
                                _buildSocialIcon(AppImages.LinkedIn7),
                                _buildSocialIcon(AppImages.twitter7),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 237.w,
                    //height: 614.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 190.w,
                          //height: 113.h,
                          // color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "contact",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Row(
                                  children: [
                                    Icon(Icons.email,
                                        color: Color(0xFF00C781), size: 16.w),
                                    SizedBox(width: 8.w),
                                    Text(
                                      "contact@johnmoore.com",
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),
                                Row(
                                  children: [
                                    Icon(Icons.phone,
                                        color: Color(0xFF00C781), size: 16.w),
                                    SizedBox(width: 8.w),
                                    Text(
                                      "+1 (450) 780 9317",
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),
                                Row(
                                  children: [
                                    Icon(Icons.language,
                                        color: Color(0xFF00C781), size: 16.w),
                                    SizedBox(width: 8.w),
                                    Text(
                                      "www.johncarter.com",
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 190.w,
                          //height: 130.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "education",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  "b.s arts in graphic design",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Stanford university",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  "2017 – 2020",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp,
                                    color: Color(0xFF00C781),
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  "b.s of design",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Harvard University",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  "2013 – 2017",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp,
                                    color: Color(0xFF00C781),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 190.w,
                          //height: 113.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "expertise",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                _buildExpertiseItem("Branding"),
                                SizedBox(height: 4.h),
                                _buildExpertiseItem("Web Design"),
                                SizedBox(height: 4.h),
                                _buildExpertiseItem("UI/UX Design"),
                                SizedBox(height: 4.h),
                                _buildExpertiseItem("Web Development"),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 190.w,
                          //height: 113.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "skills",
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 8.h),
                                _buildSkillItem("Lead & Strategy"),
                                SizedBox(height: 4.h),
                                _buildSkillItem("Innovative"),
                                SizedBox(height: 4.h),
                                _buildSkillItem("Team work"),
                                SizedBox(height: 4.h),
                                _buildSkillItem("Goal oriented"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      bottomLeft: Radius.circular(20.r),
                    ),
                    child: Container(
                      //width: MediaQuery.of(context).size.width ,
                      //height: 614.h,
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1D1D),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          bottomLeft: Radius.circular(20.r),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            //width: 5.w,
                            //height: 590.h,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 300.w,
                                //height: 100.h,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.w, vertical: 8.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "about me",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 8.h),
                                      Text(
                                        "Lorem ipsum dolor sit amet consectetur adipiscing elit "
                                        "scelerisque sit senectus maecenas donec amet viverra "
                                        "Aliquam aenean eget gravida vitae nunc vitae sit.",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                      SizedBox(height: 8.h),
                                      Divider(
                                        color: Colors
                                            .grey, // Adjust the color to match your design
                                        thickness: 1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 290.w,
                                //height: 433.h,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.w, vertical: 12.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "work experience",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 8.h),
                                      _buildExperienceItem(
                                        companyName: "Facebook",
                                        jobTitle: "lead product designer",
                                        duration: "2019 – Present",
                                        description:
                                            "Eleifend volutpat sit eros, lobortis id lobortis "
                                            "placerat volutpat penatibus purus vestibulum id proin in eros a. Justo.",
                                      ),
                                      SizedBox(height: 16.h),
                                      _buildExperienceItem(
                                        companyName: "Youtube",
                                        jobTitle: "lead product designer",
                                        duration: "2018 – 2019",
                                        description:
                                            "Ultrices proin elit, tellus euismod. Leo id volutpat cursus "
                                            "integer faucibus ultrices. Convallis ipsum eu adipiscing lorem.",
                                      ),
                                      SizedBox(height: 16.h),
                                      _buildExperienceItem(
                                        companyName: "Twitter",
                                        jobTitle: "lead product designer",
                                        duration: "2017 – 2018",
                                        description:
                                            "Etiam commodo vulputate aliquam urna ac lacus. "
                                            "Sagittis arcu pulvinar ullamcorper ut. Blandit vel felis etiam.",
                                      ),
                                      SizedBox(height: 16.h),
                                      _buildExperienceItem(
                                        companyName: "Google",
                                        jobTitle: "lead product designer",
                                        duration: "2016 – 2017",
                                        description:
                                            "Sed feugiat aliquam pharetra, consequat, volutpat pharetra "
                                            "sagittis tortor. Elementum proin arcu quisque adipiscing.",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
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

  Widget _buildSocialIcon(String assetPath) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: CircleAvatar(
          radius: 10.r,
          backgroundColor: Colors.blue,
          child: SvgPicture.asset(
            assetPath,
            fit: BoxFit.contain,
          )),
    );
  }

  Widget _buildExpertiseItem(String text) {
    return Row(
      children: [
        Icon(Icons.circle, size: 6.w, color: Color(0xFF00C781)),
        SizedBox(width: 8.w),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildSkillItem(String text) {
    return Row(
      children: [
        Icon(Icons.circle, size: 6.w, color: Color(0xFF00C781)),
        SizedBox(width: 8.w),
        Text(
          text,
          style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Colors.white),
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
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: Color(0xFF00C781), // Green color for company name
          ),
        ),
        SizedBox(height: 4.h),
        Row(
          children: [
            Text(
              jobTitle,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              "| $duration",
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Text(
          description,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
