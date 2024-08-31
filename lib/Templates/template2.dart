import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/constant/app_images_constant.dart';

class Template2 extends StatefulWidget {
  const Template2({super.key});

  @override
  State createState() => _Template2State();
}

class _Template2State extends State<Template2> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 850));

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF26272E), // Dark background color
        body: Stack(
          children: [
            Container(
              width: 595.w,
              height: 942.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left side (Mobile Frame with Avatar and Name, Profile, Experience, Languages)
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40.h),
                        // Space from the top
                        _buildAvatarAndFrame(),
                        // Combine avatar and frame
                        SizedBox(
                            height: 34
                                .h),
                        // Add space between avatar/frame and other sections
                        _buildSectionWithLine(
                          title: "P R O F I L E",
                          child: _buildProfileSection(),
                          lineHeight: 100,
                          showIcon: Icon(Icons.circle, color: Color(0xff00FF88), size: 10.w),
                        ),
                        _buildSectionWithLine(
                          title: "E X P E R I E N C E",
                          child: _buildExperienceSection(),
                          showIcon: Icon(Icons.circle, color: Color(0xff00FF88), size: 10.w),
                        ),
                        _buildSectionWithLine(
                          title: " L A N G U A G E S",
                          child: _buildLanguagesSection(),
                          lineHeight: 100,
                          showIcon: Icon(Icons.circle, color: Color(0xff00FF88), size: 10.w),
                        ),
                      ],
                    ),
                  ),

                  // Right side (Contact, Studies, Skills, Social Media)
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 120.h,
                          width: 20,
                        ), // Space to align with the mobile frame
                        _buildContactSection(),
                        SizedBox(
                          height: 10,
                        ), // Place contact section at the top
                        _buildSectionWithLine(
                          title: "S T U D I E S",
                          child: _buildStudiesSection(),
                        ),
                        _buildSectionWithLine(
                            title: "S K I L L S",
                            child: _buildSkillsSection(),
                            lineHeight: 200),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 70.w,
                height: 60.h,
                color: Color(0xff00FF88), // Green color
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 50.w,
                height: 20,
                color: Color(0xff00FF88), // Green color
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatarAndFrame() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // Circular Avatar
        _buildAvatar(),
        // Mobile Frame
        _buildMobileFrame(),
      ],
    );
  }

  Widget _buildAvatar() {
    return CircleAvatar(
      backgroundImage: AssetImage(AppImages.profilePicture),
      radius: 70.w,
    );
  }

  Widget _buildMobileFrame() {
    return Container(
      width: 100.w, // Adjust width as needed
      height: 150.h, // Adjust height as needed
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(7.r),
            bottomLeft: Radius.circular(7.r),
            topRight: Radius.circular(7.r),
            bottomRight: Radius.zero),
        border: Border(
          top: BorderSide(color: Colors.white70, width: 1.w),
          left: BorderSide(color: Colors.white70, width: 1.w),
          bottom: BorderSide(color: Colors.white70, width: 1.w),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "J h o n \nD o e",
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              fontSize: 24.sp,
              color: Color(0xff00FF88),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            " U I Designers",
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.normal,
              fontSize: 15.sp,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileSection() {
    return Container(
      padding: EdgeInsets.only(left: 24.w, right: 16.w), // Add padding here
      child: Text(
        "Passionate about creating intuitive and visually appealing user interfaces that enhance user experience. With skills in design tools and user research, I am confident in bringing ideas to life and improving user satisfaction.",
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: Colors.white70,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _buildExperienceSection() {
    return Container(
      padding: EdgeInsets.only(
          left: 24.w, right: 16.w, top: 24.h, bottom: 24.h), // Add padding here
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildExperienceItem(
            jobTitle: "UI Designer",
            duration: "2022 - Present",
            description:
            "Currently working as a UI Designer at TechOverflow, creating innovative and user-friendly designs for web applications.",
          ),
          SizedBox(height: 16.h),
          _buildExperienceItem(
            jobTitle: "Junior Designer",
            duration: "2019 - 2022",
            description:
            "As a Junior Designer at MK Graphics, I gained valuable experience in creating visually appealing marketing materials.",
          ),
        ],
      ),
    );
  }

  Widget _buildLanguagesSection() {
    return Container(
      padding: EdgeInsets.only(
          left: 24.w, right: 16.w, top: 24.h, bottom: 24.h), // Add padding here
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildLanguageItem("English", "Native"),
          SizedBox(height: 8.h),
          _buildLanguageItem("Spanish", "Fluent"),
          SizedBox(height: 8.h),
          _buildLanguageItem("French", "Intermediate"),
        ],
      ),
    );
  }

  Widget _buildContactSection() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.email, color: Color(0xff00FF88), size: 16.w),
              SizedBox(width: 8.w),
              Text(
                "jhon.doe@example.com",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Row(
            children: [
              Icon(Icons.phone, color: Color(0xff00FF88), size: 16.w),
              SizedBox(width: 8.w),
              Text(
                "+123 456 7890",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.ac_unit_outlined,
                  color: Color(0xff00FF88), size: 16.w),
              SizedBox(width: 8.w),
              Text(
                "muhammadbilalansariwebsite.io",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStudiesSection() {
    return Container(
      padding: EdgeInsets.only(left: 24.w, right: 16.w), // Add padding here
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildStudiesItem(
            "The University of Lahore",
            "2017 – 2020",
            " A graphic designer is a creative professional who crafts visual content for print and digital media. They use typography, color, and imagery to create logos, websites, brochures, and promotional materials. ",
          ),
          SizedBox(height: 8.h),
          _buildStudiesItem(
            "Punjab University",
            "2013 – 2017",
            "A graphic designer is a creative professional who crafts visual content for print and digital media. They use typography, color, and imagery to create logos, websites, brochures, and promotional materials.",
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsSection() {
    return Container(
      padding: EdgeInsets.only(
          left: 24.w, right: 16.w, top: 24.h, bottom: 24.h), // Add padding here
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),
          _buildSkillItem("Figma", 95),
          SizedBox(height: 8.h),
          _buildSkillItem("Photoshop", 79),
          SizedBox(height: 8.h),
          _buildSkillItem("Illustrator", 85),
        ],
      ),
    );
  }

  Widget _buildSkillItem(String skillName, int percentage) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skillName,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 4.h),
        Stack(
          children: [
            Container(
              width: 343.w, // Width of the skill bar
              height: 8.h,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(4.w),
              ),
            ),
            Container(
              width: (343 * (percentage / 100)).w, // Width based on percentage
              height: 8.h,
              decoration: BoxDecoration(
                color: percentage >= 80
                    ? Color(0xff00FF88)
                    : Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(4.w),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSectionWithLine({
    required String title,
    required Widget child,
    double lineHeight = 250.0, // Default line height
    Icon? showIcon, // Optional parameter to show icon
  }) {
    return Container(
      padding: EdgeInsets.only(left: 24.w, right: 16.w, top: 5, bottom: 6),
      // Add padding here
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 1.w,
                height: lineHeight.h, // Use the lineHeight parameter
                color: Colors.white70,
              ),
              if (showIcon != null)
                Positioned(
                  top: lineHeight.h / 2 - (showIcon.size ?? 10.w) / 2, // Center the icon vertically
                  left: -5.w, // Adjust the position as needed
                  child: showIcon, // Use the passed icon
                ),
            ],
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Multiplex',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.w,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: 12.h),
                child,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildExperienceItem({
  required String jobTitle,
  required String duration,
  required String description,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        jobTitle,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
          color: Color(0xff00FF88),
        ),
      ),
      SizedBox(height: 4.h),
      SizedBox(height: 4.h),
      Text(
        duration,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: Colors.white70,
        ),
      ),
      SizedBox(height: 4.h),
      Text(
        description,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: Colors.white70,
        ),
        textAlign: TextAlign.justify,
      ),
    ],
  );
}

Widget _buildLanguageItem(String language, String proficiency) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        language,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
          color: Colors.white,
        ),
      ),
      Text(
        proficiency,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: Colors.white70,
        ),
      ),
    ],
  );
}

Widget _buildStudiesItem(
    String institution, String duration, String description) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        institution,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: Color(0xff00FF88),
        ),
      ),
      SizedBox(height: 4.h),
      Text(
        duration,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: Colors.white70,
        ),
      ),
      Text(
        description,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: Colors.white70,
        ),
      ),
    ],
  );
}
