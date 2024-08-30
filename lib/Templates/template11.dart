import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/constant/app_images_constant.dart';

class Template11 extends StatefulWidget {
  const Template11({super.key});

  @override
  State createState() => _Template11State();
}

class _Template11State extends State<Template11> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(450, 850));
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            // Left side
            Container(
              width: 170.w,
              height: 1000.h,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150.w,
                    height: 200.h,
                    child: Padding(
                      padding: EdgeInsets.only(top: 24.h, left: 24.h),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(AppImages.profilePicture),
                              radius: 60.w,
                            ),
                            SizedBox(height: 12.h, width: 12.w),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Jhon Doe\n",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24.sp,
                                      color: Colors.cyanAccent,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "UI/UX Designer",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12.sp,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          _buildContactSection(),
                          SizedBox(height: 24.h),
                          _buildSkillsSection(),
                          SizedBox(height: 24.h),
                          _buildLanguageSection(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Right side
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildProfileSection(),
                    _buildExperienceSection(),
                    buildExperienceSection2()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }

  Widget _buildVerticalSeparator() {
    return Container(
      height: 1.h,
      width: double.infinity,
      color: Colors.white70,
    );
  }

  Widget buildVerticalSeparator2() {
    return Container(
      height: 1.h,
      width: double.infinity,
      color: Colors.cyanAccent,
    );
  }

  Widget _buildContactSection() {
    return Container(
      width: 190.w,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Contact",
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16.h),
          _buildVerticalSeparator(),
          SizedBox(height: 8.h),
          _buildContactItem(Icons.email, "contact@johnmoore.com"),
          SizedBox(height: 8.h),
          _buildContactItem(Icons.phone, "+1 (450) 780 9317"),
          SizedBox(height: 8.h),
          _buildContactItem(Icons.language, "www.johncarter.com"),
        ],
      ),
    );
  }

  Widget _buildSkillsSection() {
    return Container(
      width: 190.w,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Skills",
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16.h),
          _buildVerticalSeparator(),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildSkillCircle("Figma", 80),
              _buildSkillCircle("XD", 95),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildSkillCircle("PS", 80),
              _buildSkillCircle("AI", 95),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageSection() {
    return Container(
      width: 190.w,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Languages",
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16.h),
          _buildVerticalSeparator(),
          SizedBox(height: 16.h),
          _buildExpertiseItem("URDU"),
          SizedBox(height: 8.h),
          _buildExpertiseItem("English"),
        ],
      ),
    );
  }

  Widget _buildProfileSection() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Profile",
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: Colors.cyanAccent,
            ),
          ),
          buildVerticalSeparator2(),
          SizedBox(height: 8.h),
          Text(
            "Lorem ipsum dolor sit amet consectetur adipiscing elit scelerisque sit senectus maecenas donec amet viverra. Aliquam aenean eget gravida vitae nunc vitae sit.\n Lorem ipsum dolor sit amet consectetur adipiscing elit scelerisque sit senectus maecenas donec amet viverra. Aliquam aenean eget gravida vitae nunc vitae sit.\n Lorem ipsum dolor sit amet consectetur adipiscing elit scelerisque sit senectus maecenas donec amet viverra. Aliquam aenean eget gravida vitae nunc vitae sit.",
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceSection() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Experience",
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: Colors.cyanAccent,
            ),
          ),
          buildVerticalSeparator2(),
          SizedBox(height: 8.h),
          _buildExperienceItem(
            jobTitle: " Designer",
            duration: "2019 Present",
            description:
            "Eleifend volutpat sit eros, lobortis id lobortis placerat volutpat penatibus purus vestibulum id proin in eros a. Justo.",
          ),
          SizedBox(height: 16.h),
          _buildExperienceItem(
            jobTitle: " Product ",
            duration: "2018 - 2019",
            description:
            "Ultrices proin elit, tellus euismod. Leo id volutpat cursus integer faucibus ultrices. Convallis ipsum eu adipiscing lorem.",
          ),
          SizedBox(height: 16.h),
          _buildExperienceItem(
            jobTitle: "Programming ",
            duration: "2017 – 2018",
            description:
            "Etiam commodo vulputate aliquam urna ac lacus. Sagittis arcu pulvinar ullamcorper ut. Blandit vel felis etiam.",
          ),
        ],
      ),
    );
  }

  Widget buildExperienceSection2() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Experience",
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: Colors.cyanAccent,
            ),
          ),
          buildVerticalSeparator2(),
          SizedBox(height: 8.h),
          _buildExperienceItem(
            jobTitle: " Designer",
            duration: "2019 Present",
            description:
            "Eleifend volutpat sit eros, lobortis id lobortis placerat volutpat penatibus purus vestibulum id proin in eros a. Justo.",
          ),
          SizedBox(height: 16.h),
          _buildExperienceItem(
            jobTitle: "Programming ",
            duration: "2017 – 2018",
            description:
            "Etiam commodo vulputate aliquam urna ac lacus. Sagittis arcu pulvinar ullamcorper ut. Blandit vel felis etiam.",
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.cyanAccent, size: 16.w),
        SizedBox(width: 8.w),
        Text(
          text,
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

  Widget _buildExpertiseItem(String text) {
    return Row(
      children: [
        Icon(Icons.circle, size: 6.w, color: Colors.white),
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

  Widget _buildSkillCircle(String skillName, int percentage) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 25.w,
              backgroundColor: Colors.cyanAccent.withOpacity(0.1),
            ),
            CircularProgressIndicator(
              value: percentage / 100,
              strokeWidth: 10.w,
              backgroundColor: Colors.white.withOpacity(0.1),
              color: percentage >= 90
                  ? Colors.cyanAccent
                  : Colors.cyanAccent.withOpacity(0.5),
            ),
            CircleAvatar(
              radius: 20.w,
              backgroundColor: Colors.black,
              child: Text(
                skillName,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildExperienceItem({
    required String jobTitle,
    required String duration,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              jobTitle,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
                color: Colors.cyanAccent,
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              "| $duration",
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Colors.black,
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
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
