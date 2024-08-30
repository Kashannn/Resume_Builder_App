import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Template18 extends StatefulWidget {
  const Template18({super.key});

  @override
  State<Template18> createState() => _Template18State();
}

class _Template18State extends State<Template18> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 595.w,
          height: 842.h,
          child: Stack(
            children: [
              SvgPicture.asset(
                AppImages.imagetemplate18,
                width: 595.w,
                height: 810.h,
                fit: BoxFit.fill,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 40.h),
                        child: CircleAvatar(
                          radius: 90.r,
                          backgroundImage: AssetImage(AppImages.profilePicture),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 170.w, top: 50.h),
                              child: Container(
                                width: 200.w,
                                height: 110.h,
                                // color: Colors.red,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'HELLO! I\'M',
                                      style: GoogleFonts.inter(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                    ShaderMask(
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                        colors: [
                                          Color(0xFF5BBBFF),
                                          Color(0xFF005592)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ).createShader(bounds),
                                      child: Text(
                                        'Malkin',
                                        style: GoogleFonts.inter(
                                          fontSize: 35.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    ShaderMask(
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                        colors: [
                                          Color(0xFF5BBBFF),
                                          Color(0xFF005592)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ).createShader(bounds),
                                      child: Text(
                                        'Anderson',
                                        style: GoogleFonts.inter(
                                          fontSize: 40.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      'UI/UX Designer',
                                      style: GoogleFonts.inter(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          SizedBox(height: 40.h),
                          Container(
                            width: 320.w,
                            height: 100.h,
                            color: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.phone,
                                        color: Color(0xFF5BBBFF), size: 16.sp),
                                    SizedBox(width: 8.w),
                                    Text(
                                      '+1 123 456 7890',
                                      style: GoogleFonts.inter(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(width: 10.w),
                                    Icon(Icons.email,
                                        color: Color(0xFF5BBBFF), size: 16.sp),
                                    SizedBox(width: 8.w),
                                    Text(
                                      'johndeo@gmail.com',
                                      style: GoogleFonts.inter(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.location_on,
                                        color: Color(0xFF5BBBFF), size: 16.sp),
                                    SizedBox(width: 8.w),
                                    Expanded(
                                      child: Text(
                                        'Apt. 352 375 Tonya Drive, Hirtheport, IA 54690',
                                        style: GoogleFonts.inter(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 245.w,
                        height: 150.h,
                        color: Color(0xFF50D3F1).withOpacity(0.25),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About Me',
                                style: GoogleFonts.inter(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4089D8),
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                'A student majoring in Advertising and UI / UX design. In this CV is my design and marketing experience. Things I achieve through projects and works. Therefore, I want a job starting UI/UX as a career to stabilize and enhance my competence.',
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF4D4D4D),
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 30.w),
                      Column(
                        children: [
                          Container(
                            width: 260.w,
                            height: 200.h,
                            color: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'EDUCATION',
                                  style: GoogleFonts.dmSans(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4089D8),
                                  ),
                                ),
                                SizedBox(height: 12.h),
                                _buildEducationItem(
                                  year: '2020 - 2024',
                                  title: 'Advertising Manager',
                                  institution:
                                      'University Of Economics & Finance',
                                  showDot: true,
                                ),
                                _buildEducationItem(
                                  year: '2018 - 2019',
                                  title: 'UI/UX Design',
                                  institution: 'University Of Science HCM',
                                  showDot: true,
                                ),
                                _buildEducationItem(
                                  year: '2017 - 2015',
                                  title: 'Graphic Design',
                                  institution: 'University Of Science HCM',
                                  showDot: false,
                                ),
                                SizedBox(height: 8.h),
                                Container(
                                  width: double.infinity,
                                  height: 1.h,
                                  color: Color(0xFF6F2DBD),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100.w,
                          height: 170.h,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Skills',
                                style: GoogleFonts.inter(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4089D8),
                                ),
                              ),
                              SizedBox(height: 8.h),
                              _buildSkillRow('Photoshop', 8),
                              _buildSkillRow('Illustrator', 7),
                              _buildSkillRow('Graphic Designing', 6),
                              _buildSkillRow('UI/UX Designing', 9),
                              _buildSkillRow('Figma', 7),
                              Divider(
                                color: Color(0xFF7623FF),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 300.w,
                          height: 230.h,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Work Experience',
                                style: GoogleFonts.dmSans(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4089D8),
                                ),
                              ),
                              SizedBox(height: 12.h),
                              _buildExperienceItem(
                                year: '2021 - 2022',
                                title: 'Project Manager',
                                company: 'Harper and Partners Inc.',
                                description:
                                    'Maintained 100% client satisfaction by ensuring that all projects meet quality and budget standards.',
                                showDot: true,
                              ),
                              _buildExperienceItem(
                                year: '2020 - 2022',
                                title: 'Junior Project Manager',
                                company: 'Scheduster Digital Group',
                                description:
                                    'Met 100% of project deadlines and objectives every year by efficiently communicating with managers and coordinating with employees.',
                                showDot: false,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Container(
                      width: 100.w,
                      height: 50.h,
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Portfolio',
                            style: GoogleFonts.dmSans(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4089D8),
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            'Your Portfolio Link',
                            style: GoogleFonts.dmSans(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
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

  Widget _buildSkillRow(String skill, int proficiency) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            skill,
            style: GoogleFonts.inter(
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4.h),
          Row(
            children: List.generate(10, (index) {
              return Icon(
                Icons.circle,
                size: 8.sp,
                color:
                    index < proficiency ? Color(0xFF4089D8) : Color(0xFFB0C4DE),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildEducationItem({
    required String year,
    required String title,
    required String institution,
    required bool showDot,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 2.w,
              height: 30.h,
              color: Color(0xFF6F2DBD), // Vertical line color
            ),
            if (showDot)
              Container(
                width: 8.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Color(0xFF6F2DBD), // Dot color
                  shape: BoxShape.circle,
                ),
              ),
            if (!showDot)
              Container(
                width: 2.w,
                height: 20.h,
                color: Colors.transparent, // Line after the last dot
              ),
          ],
        ),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              year,
              style: GoogleFonts.dmSans(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              title,
              style: GoogleFonts.dmSans(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              institution,
              style: GoogleFonts.dmSans(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ],
    );
  }

  Widget _buildExperienceItem({
    required String year,
    required String title,
    required String company,
    required String description,
    required bool showDot,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 2.w,
              height: 30.h,
              color: Color(0xFF6F2DBD),
            ),
            if (showDot)
              Container(
                width: 8.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Color(0xFF6F2DBD),
                  shape: BoxShape.circle,
                ),
              ),
            if (!showDot)
              Container(
                width: 2.w,
                height: 30.h,
                color: Colors.transparent,
              ),
          ],
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                year,
                style: GoogleFonts.dmSans(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                title,
                style: GoogleFonts.dmSans(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                company,
                style: GoogleFonts.dmSans(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                description,
                style: GoogleFonts.dmSans(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ],
    );
  }
}
