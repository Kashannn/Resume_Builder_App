import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CVTemplateScreen extends StatelessWidget {
  const CVTemplateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0C1B2A), // Dark background
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeader(),
            SizedBox(height: 20.h),
            _buildProfileSection(),
            SizedBox(height: 30.h),
            _buildMainContent(),
            SizedBox(height: 30.h),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Stack(
      children: [
        Container(
          height: 250.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF151A25),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 60.r,
                  backgroundImage: AssetImage(AppImages.profilePicture),
                ),
                SizedBox(width: 20.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Jhon Doe',
                        style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF00FF85), // Bright green color
                        ),
                      ),
                      Text(
                        'UI Designer',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      _buildContactInfo(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 20.h,
          left: 20.w,
          child: Container(
            height: 20.h,
            width: 20.w,
            color: Color(0xFF00FF85), // Green accent color
          ),
        ),
      ],
    );
  }

  Widget _buildContactInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.language, color: Colors.greenAccent, size: 10.w),
            SizedBox(width: 10.w),
            Text(
              'mbilalansari.webflow.io',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            Icon(Icons.email, color: Colors.greenAccent, size: 10.w),
            Text(
              'bilalansaridesigns@gmail',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            Icon(Icons.phone, color: Colors.greenAccent, size: 10.w),
            SizedBox(width: 10.w),
            Text(
              '+92 313 4212 445',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProfileSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PROFILE',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10.h),
        _buildSectionContent(
          'Passionate about creating intuitive and visually appealing user interfaces that enhance the user experience. With my skills in design tools and user research, I am confident in my ability to bring innovative and user-centric designs to life.',
        ),
        SizedBox(height: 20.h),
        _buildDividerLine(), // Add line
      ],
    );
  }

  Widget _buildMainContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: _buildLeftColumn()),
        SizedBox(width: 20.w),
        Expanded(child: _buildRightColumn()),
      ],
    );
  }

  Widget _buildLeftColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildProfileSection(),
        SizedBox(height: 20.h),
        _buildSectionTitle('EXPERIENCE'),
        _buildExperienceItem(
          companyName: 'TechOverflow',
          position: 'UI Designer',
          duration: '2022-Present',
          description:
              'Currently working as a UI Designer at TechOverflow, creating innovative designs for various web and mobile applications.',
        ),
        _buildExperienceItem(
          companyName: 'MK Graphics',
          position: 'UI Designer',
          duration: '2021-2022',
          description:
              'As a UI Designer at MK Graphics, I gained valuable experience in creating visually appealing and user-friendly designs.',
        ),
        SizedBox(height: 20.h),
        _buildSectionTitle('LANGUAGES'),
        _buildLanguageItem('URDU', 'It\'s my native language'),
        _buildLanguageItem('ENGLISH', 'Fluent in communicate effectively.'),
      ],
    );
  }

  Widget _buildRightColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('STUDIES'),
        _buildEducationItem(
          schoolName: 'The University of Lahore',
          degree: 'Associate\'s degree in Graphic Design',
          duration: '2020-2021',
        ),
        _buildEducationItem(
          schoolName: 'The University of Punjab',
          degree: 'Bachelor\'s degree in IT',
          duration: '2020-2022',
        ),
        SizedBox(height: 20.h),
        _buildSectionTitle('SKILLS'),
        _buildSkillItem('Figma - XD', 0.9),
        _buildSkillItem('Photoshop', 0.8),
        _buildSkillItem('Illustrator', 0.7),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
        color: Colors.white,
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Text(
        content,
        style: TextStyle(
          fontSize: 14.sp,
          color: Colors.grey.shade300,
          height: 1.5,
        ),
      ),
    );
  }

  Widget _buildExperienceItem({
    required String companyName,
    required String position,
    required String duration,
    required String description,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDividerLine(),
              Icon(Icons.circle, color: Color(0xFF00FF85), size: 10.w),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$position at $companyName',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF00FF85),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      duration,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          _buildDividerLine(), // Add line between items
        ],
      ),
    );
  }

  Widget _buildEducationItem({
    required String schoolName,
    required String degree,
    required String duration,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDividerLine(),
              Icon(Icons.circle, color: Color(0xFF00FF85), size: 10.w),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      schoolName,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF00FF85),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      degree,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      duration,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          _buildDividerLine(), // Add line between items
        ],
      ),
    );
  }

  Widget _buildLanguageItem(String language, String description) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.circle, color: Color(0xFF00FF85), size: 10.w),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  language,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillItem(String skillName, double proficiency) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            skillName,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5.h),
          LinearProgressIndicator(
            value: proficiency,
            backgroundColor: Colors.grey.shade600,
            color: Color(0xFF00FF85),
            minHeight: 10.h,
          ),
          _buildDividerLine(), // Add line after each skill
        ],
      ),
    );
  }

  Widget _buildDividerLine() {
    return Container(
      width: 2.w,
      height: 30.h,
      color: Colors.white.withOpacity(0.5),
    );
  }

  Widget _buildFooter() {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '@jhondoe',
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSocialIcon(AppImages.instagram),
            SizedBox(width: 10.w),
            _buildSocialIcon(AppImages.twitter),
            SizedBox(width: 10.w),
            _buildSocialIcon('assets/icons/instagram.svg'),
            SizedBox(width: 10.w),
            _buildSocialIcon('assets/icons/dribbble.svg'),
            SizedBox(width: 10.w),
            _buildSocialIcon('assets/icons/linkedin.svg'),
            SizedBox(width: 10.w),
            _buildSocialIcon('assets/icons/behance.svg'),
          ],
        ),
        SizedBox(height: 20.h),
      ],
    );
  }

  Widget _buildSocialIcon(String assetPath) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: SvgPicture.asset(
        assetPath,
        fit: BoxFit.contain,
      ),
    );
  }
}
