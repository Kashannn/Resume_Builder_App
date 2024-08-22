import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CVTemplateSimplematicX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: Size(360, 690),
      minTextAdapt: true,
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.all(16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Section
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40.r,
                      backgroundImage: AssetImage(AppImages.profilePicture),
                    ),
                    SizedBox(width: 20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, I am Peter.",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "A Product Designer.",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(color: Colors.white54, height: 40.h),
                // Skills Section
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Skills",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          buildSkillButton("Product Design"),
                          buildSkillButton("UX Research"),
                          buildSkillButton("UI/UX Design"),
                          buildSkillButton("UI/UX Design"),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About Me",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Lorem ipsum dolor sit amet consectetur adipiscing elit neque tempor malesuada adipiscing congue diam quis orci amet porttitor blandit amet nullam sit elit, purus blandit non ut non quam curabitur.",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white54,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            "Quis orci amet porttitor blandit amet nullam sit elit purus blandit non ut non quam curabitur lorem ipsum dolor sit amet consectetur adipiscing elit neque tempor, malesuada adipiscing congue diam.",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(color: Colors.white54, height: 40.h),
                // Social Media Links
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Follow me",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          buildSocialButton("Facebook"),
                          buildSocialButton("Twitter"),
                          buildSocialButton("Instagram"),
                          buildSocialButton("LinkedIn"),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Experience Section
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Past experience",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                buildExperienceItem("VP of Design",
                                    "Google, LLC.", "Jan 2022 — Present"),
                                buildExperienceItem("Senior Product Designer",
                                    "Meta, Inc.", "2018 — 2022"),
                                buildExperienceItem("UX Researcher",
                                    "Twitter, Inc.", "2015 — 2018"),
                              ],
                            ),
                          ),
                          SizedBox(width: 20.w),
                          // Education Section
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Education",
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                buildEducationItem("B.S Arts in Graphic Design",
                                    "Stanford University", "2017 — 2020"),
                                buildEducationItem("Advanced UI Design",
                                    "Caltech University", "2013 — 2017"),
                                buildEducationItem("B.S of Design",
                                    "Harvard University", "2009 — 2013"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(color: Colors.white54, height: 40.h),
                // Contact Section
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildContactItem("Email", "contact@petermoore.com"),
                      buildContactItem("Phone Number", "(487) 540 - 9804"),
                      buildContactItem("Portfolio", "www.petermoore.com"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSkillButton(String skill) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.check, size: 16.sp),
        label: Text(skill),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.white12,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(vertical: 12.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
    );
  }

  Widget buildSocialButton(String platform) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.share, size: 16.sp),
        label: Text(platform),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.white12,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(vertical: 12.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
    );
  }

  Widget buildExperienceItem(String title, String company, String duration) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Text(
            company,
            style: TextStyle(fontSize: 14.sp, color: Colors.white),
          ),
          Text(
            duration,
            style: TextStyle(fontSize: 12.sp, color: Colors.white54),
          ),
        ],
      ),
    );
  }

  Widget buildEducationItem(String degree, String university, String years) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            degree,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Text(
            university,
            style: TextStyle(fontSize: 14.sp, color: Colors.white),
          ),
          Text(
            years,
            style: TextStyle(fontSize: 12.sp, color: Colors.white54),
          ),
        ],
      ),
    );
  }

  Widget buildContactItem(String label, String info) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        Text(
          info,
          style: TextStyle(fontSize: 14.sp, color: Colors.white),
        ),
      ],
    );
  }
}
