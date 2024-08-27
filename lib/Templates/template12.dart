import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constant/app_images_constant.dart';

class Template12 extends StatefulWidget {
  const Template12({super.key});

  @override
  State<Template12> createState() => _Template12State();
}

class _Template12State extends State<Template12> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 595.w,
          height: 842.h,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Top Section
                SizedBox(
                  height: 184.h,
                  width: 595.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 184.h,
                        width: 225.w,
                        decoration: const BoxDecoration(
                          color: Color(0xFF1E2837),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                  ),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      bottomLeft: Radius.circular(30),
                                    ),
                                    child: Image(
                                      image:
                                          AssetImage(AppImages.profilePicture),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 184.h,
                        width: 360.w,
                        decoration: const BoxDecoration(
                          color: Color(0xFF1E2837),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'ELIZABETH HARRIS',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 21.sp,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      SizedBox(height: 8.h),
                                      Text(
                                        'WEB DESIGNER & DEVELOPER',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11.sp,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                // Main Content
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Left Column
                    Container(
                      width: 225.w,
                      height: 614.h,
                      color: Color(0xFFF5F5F5),
                      padding: EdgeInsets.symmetric(
                          vertical: 16.h, horizontal: 12.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Contact Header
                          buildSectionHeader('Contact'),
                          SizedBox(height: 12.h),
                          buildContactItem(Icons.phone, '+001 123 456 789'),
                          SizedBox(height: 8.h),
                          buildContactItem(Icons.email, 'Info@yourmail.com'),
                          SizedBox(height: 8.h),
                          buildContactItem(Icons.web, 'www.youwebsite.com'),
                          SizedBox(height: 8.h),
                          buildContactItem(
                              Icons.location_on, 'Street Name, Country'),
                          SizedBox(height: 24.h),

                          // Skill Header
                          buildSectionHeader('SKILL'),
                          SizedBox(height: 12.h),
                          buildSkillItem('Web design'),
                          buildSkillItem('Graphic design'),
                          buildSkillItem('Ui design'),
                          buildSkillItem('Drawing'),
                          buildSkillItem('Animation'),
                          SizedBox(height: 24.h),

                          // Languages Header
                          buildSectionHeader('LANGUAGES'),
                          SizedBox(height: 12.h),
                          buildSkillItem('French'),
                          buildSkillItem('Chinese'),
                          buildSkillItem('Spanish'),
                          buildSkillItem('English'),
                          SizedBox(height: 24.h),

                          // Reference Header
                          buildSectionHeader('REFERENCE'),
                          SizedBox(height: 12.h),
                          buildReferenceItem(),
                        ],
                      ),
                    ),

                    // Right Column
                    Container(
                      width: 360.w,
                      height: 629.h,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // Education Header
                          buildSectionHeader('EDUCATION'),
                          SizedBox(height: 12.h),
                          buildEducationItem('2015', 'Enter Masters Degree',
                              'University / College / Institute'),
                          SizedBox(height: 12.h),
                          buildEducationItem('2012', 'Enter Bachelor Degree',
                              'University / College / Institute'),
                          SizedBox(height: 24.h),

                          // Work Experience Header
                          buildSectionHeader('WORK EXPERIENCE'),
                          SizedBox(height: 12.h),
                          buildWorkExperienceItem(
                            'JOB POSITION / TITLE HERE',
                            'Company  Institute Name  Location or Country - 2010 - 2014',
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip.',
                          ),
                          SizedBox(height: 12.h),
                          buildWorkExperienceItem(
                            'JOB POSITION / TITLE HERE',
                            'Company  Institute Name  Location or Country - 2010 - 2014',
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip.',
                          ),
                          SizedBox(height: 12.h),
                          buildWorkExperienceItem(
                            'JOB POSITION / TITLE HERE',
                            'Company  Institute Name  Location or Country - 2010 - 2014',
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip.',
                          ),
                          SizedBox(height: 24.h),

                          // Awards Header
                          buildSectionHeader('AWARDS'),
                          SizedBox(height: 12.h),
                          buildAwardsItem(
                            '2015',
                            'Consectetuer elit uteum',
                            'Aliquip exercitation ullamco laboris nisi ut ex ea commodo consequat.',
                          ),
                          SizedBox(height: 12.h),
                          buildAwardsItem(
                            '2012',
                            'Lamco laboris nisi ut',
                            'Doconseque exercitation ullamco laboris nisi ut aliquip ex commodo.',
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSectionHeader(String title) {
    return Container(
      color: Color(0xFF202636),
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildContactItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Color(0xFF202636), size: 18.sp),
        SizedBox(width: 8.w),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12.sp,
              color: Color(0xFF202636),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSkillItem(String skill) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                skill,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Color(0xFF202636),
                ),
              ),
            ),
            SizedBox(width: 8.w),
            Container(
              width: 60.w,
              height: 5.h,
              color: Color(0xFF202636),
            ),
          ],
        ),
        SizedBox(height: 8.h),
      ],
    );
  }

  Widget buildReferenceItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PERSON FULL NAME HERE\nGeneral Manager  Company Full Name Here',
          style: TextStyle(
            color: Color(0xFF202636),
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.h),
        buildContactItem(Icons.phone, '+123 4567 890'),
        buildContactItem(Icons.email, 'yourmail@domain.com'),
        buildContactItem(Icons.web, 'www.example.com'),
      ],
    );
  }

  Widget buildEducationItem(String year, String degree, String institution) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          year,
          style: TextStyle(
            fontSize: 14.sp,
            color: Color(0xFF202636),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              degree,
              style: TextStyle(
                fontSize: 14.sp,
                color: Color(0xFF202636),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              institution,
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildWorkExperienceItem(
      String title, String details, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: Color(0xFF202636),
          ),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 4.h),
        Text(
          details,
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.black54,
          ),
          textAlign: TextAlign.justify,
        ),
        SizedBox(height: 4.h),
        Text(
          description,
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.black54,
            height: 1.5,
          ),
        ),
      ],
    );
  }

  Widget buildAwardsItem(String year, String title, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          year,
          style: TextStyle(
            fontSize: 12.sp,
            color: Color(0xFF202636),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.justify,
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 12.sp,
                color: Color(0xFF202636),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 4.h),
            Text(
              description,
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.black54,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ],
    );
  }
}
