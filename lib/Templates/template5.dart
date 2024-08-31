import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Template5 extends StatefulWidget {
  const Template5({super.key});

  @override
  State<Template5> createState() => _Template5State();
}

class _Template5State extends State<Template5> {
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 250.w,
                    height: 798.h,
                    decoration: BoxDecoration(
                      color: Color(0xFF1B2530),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // Profile Picture
                        Padding(
                          padding: EdgeInsets.only(top: 16.h),
                          child: CircleAvatar(
                            radius: 85.r,
                            backgroundColor: Color(0xFF00FF6A),
                            child: CircleAvatar(
                              radius: 80.r,
                              backgroundImage:
                                  AssetImage(AppImages.profilePicture),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        // Contact Section
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildSectionHeader('CONTACT'),
                              SizedBox(height: 8.h),
                              _buildContactItem(
                                icon: Icons.email_outlined,
                                text: 'contact@johncarter.com',
                              ),
                              SizedBox(height: 8.h),
                              _buildContactItem(
                                icon: Icons.phone_outlined,
                                text: '(487) 806 - 7204',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.h),
                        // Skills Section
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildSectionHeader('SKILLS'),
                              SizedBox(height: 8.h),
                              _buildSkillItem('Corporate & Compliance'),
                              _buildSkillItem('Labor & Employment'),
                              _buildSkillItem('Intellectual Property'),
                              _buildSkillItem('Mergers & Acquisitions'),
                              _buildSkillItem('Business Taxation'),
                              _buildSkillItem('Dispute Resolution'),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.h),
                        // Values Section
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildSectionHeader('VALUES'),
                              SizedBox(height: 8.h),
                              _buildSkillItem('Excellence'),
                              _buildSkillItem('Trust'),
                              _buildSkillItem('Integrity'),
                              _buildSkillItem('Accountability'),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.h),
                        // Social Media Section
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '@johncarter',
                                style: GoogleFonts.mulish(
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  _buildSocialIcon(Icons.facebook),
                                  _buildSocialIcon(Icons.youtube_searched_for),
                                  SvgPicture.asset(
                                    AppImages.whatsapp12,
                                    color: Colors.white,
                                  ),
                                  SvgPicture.asset(
                                    AppImages.linkedin,
                                    color: Colors.white,
                                  ),
                                  SvgPicture.asset(
                                    AppImages.instagram,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 345.w,
                    height: 798.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 345.w,
                          height: 80.h,
                          color: Color(0xFF1B2530), // Dark background color
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Title
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 25.w,
                                      height: 2.h,
                                      color: Colors.greenAccent,
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      'ATTORNEY',
                                      style: GoogleFonts.mulish(
                                        fontSize: 12.sp,
                                        color: Colors.white.withOpacity(0.7),
                                        letterSpacing: 1.5,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),
                                // Name
                                Text(
                                  'John Carter',
                                  style: GoogleFonts.mulish(
                                    fontSize: 24.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 345.w,
                          height: 100.h,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Title
                                Row(
                                  children: [
                                    Container(
                                      width: 25.w,
                                      height: 2.h,
                                      color: Colors.greenAccent,
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      'ABOUT JOHN CARTER',
                                      style: GoogleFonts.mulish(
                                        fontSize: 16.sp,
                                        color: Color(
                                            0xFF333333), // Dark grey color
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),
                                // Description
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Justo, euismod felis, eros mi purus in est. Vitae sodales tellus vitae, tincidunt in sed orci. Blandit proin posuere dui vitae.',
                                  style: GoogleFonts.mulish(
                                    fontSize: 12.sp,
                                    color:
                                        Color(0xFF666666), // Lighter grey color
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 345.w,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 16.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Section Title
                                Row(
                                  children: [
                                    Container(
                                      width: 25.w,
                                      height: 2.h,
                                      color: Colors.greenAccent,
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      'WORK EXPERIENCE',
                                      style: GoogleFonts.mulish(
                                        fontSize: 16.sp,
                                        color: Color(
                                            0xFF333333), // Dark grey color
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16.h),

                                // Facebook Experience
                                _buildExperienceItem(
                                  company: 'FACEBOOK',
                                  position: 'LEGAL COURT',
                                  duration: '2019 - PRESENT',
                                  description:
                                      'Ultrices proin elit, tellus euismod. Leo id volutpat cursus integer faucibus ultrices. Convallis ipsum eu adipiscing lorem.',
                                ),
                                SizedBox(height: 16.h),

                                // Google Experience
                                _buildExperienceItem(
                                  company: 'GOOGLE',
                                  position: 'TRADEMARK ATTORNEY',
                                  duration: '2018 - 2019',
                                  description:
                                      'Lorem ipsum dolor sit amet consectetur adipiscing elit justo euismod felis eros mi purus in est vitae sodales tellus vitae tincidunt in sed orci.',
                                ),
                                SizedBox(height: 16.h),

                                // Twitter Experience
                                _buildExperienceItem(
                                  company: 'TWITTER',
                                  position: 'ASSOCIATE ATTORNEY',
                                  duration: '2017 - 2018',
                                  description:
                                      'Lorem ipsum dolor sit amet consectetur adipiscing elit vitae cursus enim eget elit tincidunt platea egestas tempus.',
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 345.w,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 16.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Section Title
                                Row(
                                  children: [
                                    Container(
                                      width: 25.w,
                                      height: 2.h,
                                      color: Colors.greenAccent,
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      'EDUCATION',
                                      style: GoogleFonts.mulish(
                                        fontSize: 16.sp,
                                        color: Color(
                                            0xFF333333), // Dark grey color
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16.h),

                                // Education Item 1
                                _buildEducationItem(
                                  degree: 'B.S OF ECONOMICS',
                                  institution: 'Harvard',
                                  duration: '2017 - 2020',
                                ),
                                SizedBox(height: 16.h),

                                // Education Item 2
                                _buildEducationItem(
                                  degree: 'B.A POLITICAL SCIENCE',
                                  institution: 'Stanford',
                                  duration: '2013 - 2017',
                                ),
                                SizedBox(height: 16.h),

                                // Education Item 3
                                _buildEducationItem(
                                  degree: 'B.S OF LAW AND BUSINESS ADM.',
                                  institution: 'MIT',
                                  duration: '2009 - 2013',
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEducationItem({
    required String degree,
    required String institution,
    required String duration,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          degree,
          style: GoogleFonts.mulish(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
        SizedBox(height: 4.h),
        Row(
          children: [
            Text(
              institution,
              style: GoogleFonts.mulish(
                fontSize: 12.sp,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              '|',
              style: GoogleFonts.mulish(
                fontSize: 12.sp,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              duration,
              style: GoogleFonts.mulish(
                fontSize: 12.sp,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildExperienceItem({
    required String company,
    required String position,
    required String duration,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          company,
          style: GoogleFonts.mulish(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.greenAccent,
          ),
        ),
        SizedBox(height: 4.h),
        Row(
          children: [
            Text(
              position.toUpperCase(),
              style: GoogleFonts.mulish(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              '|',
              style: GoogleFonts.mulish(
                fontSize: 12.sp,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              duration,
              style: GoogleFonts.mulish(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Text(
          description,
          style: GoogleFonts.mulish(
            fontSize: 12.sp,
            color: Colors.grey[600],
            height: 1.5,
          ),
        ),
      ],
    );
  }
}

Widget _buildSectionHeader(String title) {
  return Row(
    children: [
      Container(
        width: 25.w,
        height: 2.h,
        color: Colors.greenAccent,
      ),
      SizedBox(width: 8.w),
      Text(
        title,
        style: GoogleFonts.mulish(
          fontSize: 20.sp,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

Widget _buildContactItem({required IconData icon, required String text}) {
  return Row(
    children: [
      Icon(icon, color: Colors.white, size: 20.sp),
      SizedBox(width: 8.w),
      Expanded(
        child: Text(
          text,
          style: GoogleFonts.mulish(
            fontSize: 15.sp,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}

Widget _buildSkillItem(String skill) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4.h),
    child: Text(
      skill,
      style: GoogleFonts.mulish(
        fontSize: 19.sp,
        color: Colors.white,
      ),
    ),
  );
}

Widget _buildSocialIcon(IconData icon) {
  return Icon(
    icon,
    color: Colors.white,
    size: 25.sp,
  );
}
