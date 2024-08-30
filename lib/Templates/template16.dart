import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/constant/app_images_constant.dart';

class Template16 extends StatefulWidget {
  const Template16({super.key});

  @override
  State<Template16> createState() => _Template16State();
}

class _Template16State extends State<Template16> {
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
                height: 110.h,
                // color: Colors.red,
                child: SvgPicture.asset(
                  AppImages.toptemplate16,
                  width: 595.w,
                  height: 110.h,
                  fit: BoxFit.fill,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 280.w,
                    height: 685.h,
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 100.r,
                          backgroundImage: AssetImage(AppImages.profilePicture),
                        ),
                        SizedBox(
                          width: 166.w,
                          height: 68.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Sam",
                                    style: TextStyle(
                                      fontFamily:
                                          'Inter', // Ensure 'Inter' is set as the font family
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                      width: 4
                                          .w), // Adjust spacing between first and last name
                                  Text(
                                    "Moore",
                                    style: TextStyle(
                                      fontFamily:
                                          'Inter', // Ensure 'Inter' is set as the font family
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.sp,
                                      color: Colors.purple,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: 4.h), // Space between name and title
                              Text(
                                "Graphic Designer",
                                style: TextStyle(
                                  fontFamily:
                                      'Inter', // Ensure 'Inter' is set as the font family
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 240.w,
                          height: 140.h,
                          child: Padding(
                            padding:
                                EdgeInsets.all(8.w), // Adjust padding as needed
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                // Email Row
                                Row(
                                  children: [
                                    Icon(Icons.email,
                                        size: 20.w, color: Colors.black),
                                    SizedBox(width: 8.w),
                                    Text(
                                      "sam@carter.com",
                                      style: TextStyle(
                                        fontFamily:
                                            'Inter', // Ensure 'Inter' is set as the font family
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                                // Phone Row
                                Row(
                                  children: [
                                    Icon(Icons.phone,
                                        size: 20.w, color: Colors.black),
                                    SizedBox(width: 8.w),
                                    Text(
                                      "+1 (450) 780 9317",
                                      style: TextStyle(
                                        fontFamily:
                                            'Inter', // Ensure 'Inter' is set as the font family
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: 8
                                        .h), // Space between phone and follow me section
                                // Follow Me Text
                                Text(
                                  "Follow me",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp,
                                    color: Colors.purple,
                                  ),
                                ),
                                Text(
                                  "@sammoore",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: Colors.grey[700],
                                  ),
                                ),
                                SizedBox(
                                    height:
                                        8.h), // Space between text and icons
                                // Social Media Icons
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.facebook,
                                        size: 20.w, color: Colors.black),
                                    SvgPicture.asset(AppImages.twitter,
                                        width: 10.w,
                                        height: 10.h,
                                        color: Colors.black),
                                    SvgPicture.asset(AppImages.facebook,
                                        width: 10.w,
                                        height: 10.h,
                                        color: Colors.black),
                                    SvgPicture.asset(AppImages.whatsapp12,
                                        width: 10.w,
                                        height: 10.h,
                                        color: Colors.black),

                                    Icon(Icons.youtube_searched_for,
                                        size: 20.w,
                                        color: Colors
                                            .black), // Example for YouTube
                                    Icon(Icons.sports_basketball,
                                        size: 20.w,
                                        color: Colors
                                            .black), // Example for Dribbble
                                    Icon(Icons.beach_access,
                                        size: 20.w,
                                        color: Colors
                                            .black), // Example for Behance
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 240.w,
                          height: 188.h,
                          child: Padding(
                            padding:
                                EdgeInsets.all(5.w), // Adjust padding as needed
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "About me",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                    color: Colors.purple,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  "Lorem ipsum dolor sit amet consectetur adipiscing elit donec morbi "
                                  "lectus nisi egestas proin amet rhoncus scelerisque lorem feugiat "
                                  "amet hac ornare.\n\n"
                                  "Sed magna bibendum proin quisque pellentesque mi potenti bibendum. "
                                  "Eros habitant pellentesque tincidunt mi tortor et non in vulputate "
                                  "consequat pellentesque.",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.sp,
                                    color: Colors.grey[700],
                                    height:
                                        1.5, // Adjust line height for better readability
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 240.w,
                          height: 155.h,
                          child: Padding(
                            padding: EdgeInsets.all(8.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Skills",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                    color: Colors.purple,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildSkillItem("UI/UX Design"),
                                        SizedBox(height: 8.h),
                                        _buildSkillItem("Web Design"),
                                        SizedBox(height: 8.h),
                                        _buildSkillItem("User Research"),
                                        SizedBox(height: 8.h),
                                        _buildSkillItem("Motion Graphics"),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildSkillItem("Product Design"),
                                        SizedBox(height: 8.h),
                                        _buildSkillItem("Web Design"),
                                        SizedBox(height: 8.h),
                                        _buildSkillItem("Brand Design"),
                                        SizedBox(height: 8.h),
                                        _buildSkillItem("Motion Graphics"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 280.w,
                    height: 685.h,
                    child: Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 5.w,
                            height: 685.h,
                            color: Color(0xFFBFBFBF),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Past experience",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 16.h),
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildExperienceItem(
                                          iconPath: AppImages.facebook16,
                                          companyName: "Facebook",
                                          duration: "2021 /2020",
                                          jobTitle: "Senior Product Designer",
                                          description:
                                              "Lorem ipsum dolor sit amet tragon consectetur dolseclm adipiscing elit mattis faucibus odio feugiat.",
                                        ),
                                        SizedBox(height: 16.h),
                                        _buildExperienceItem(
                                          iconPath: AppImages.youtube16,
                                          companyName: "Youtube",
                                          duration: "2020 / 2021",
                                          jobTitle: "Head of UX Engineering",
                                          description:
                                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque tempor, malesuada adipiscing congue diam.",
                                        ),
                                        SizedBox(height: 16.h),
                                        _buildExperienceItem(
                                          iconPath: AppImages.twitter16,
                                          companyName: "Twitter",
                                          duration: "2019 / 2020",
                                          jobTitle: "Head of UX Engineering",
                                          description:
                                              "Lorem ipsum dolor sit amet, consectetur elit. Volutpat hac id diam malesuada adipiscing volutpat quis tellus.",
                                        ),
                                        SizedBox(height: 16.h),
                                        _buildExperienceItem(
                                          iconPath: AppImages.twitch16,
                                          companyName: "Twitch",
                                          duration: "2018 / 2019",
                                          jobTitle: "Lead of Mobile Design",
                                          description:
                                              "Lorem ipsum dolor sit amet, consectetur elit. Volutpat hac id diam malesuada adipiscing volutpat quis tellus.",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Text(
                                  "Education",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 16.h),
                                _buildEducationItem(
                                  duration: "2021 — Present",
                                  degree: "B.S Arts in Graphic Design",
                                  institution: "Stanford University",
                                ),
                                SizedBox(height: 16.h),
                                _buildEducationItem(
                                  duration: "2018 — 2015",
                                  degree: "B.S of Design",
                                  institution: "Stanford University",
                                ),
                                SizedBox(height: 16.h),
                                _buildEducationItem(
                                  duration: "2012 — 2009",
                                  degree: "VP of Design",
                                  institution: "Stanford University",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillItem(String skill) {
    return Row(
      children: [
        Icon(Icons.circle, size: 8.w, color: Colors.grey[700]),
        SizedBox(width: 8.w),
        Text(
          skill,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }

  Widget _buildExperienceItem({
    required String iconPath,
    required String companyName,
    required String duration,
    required String jobTitle,
    required String description,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          iconPath,
          width: 24.w,
          height: 24.h,
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    companyName,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    "—",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    duration,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Text(
                jobTitle,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 18.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                description,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Colors.grey[700],
                  height: 1.5, // Adjust line height for readability
                ),
              ),
            ],
          ),
        ),
      ],
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
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: Colors.grey[700],
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          degree,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          institution,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
