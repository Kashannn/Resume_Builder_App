import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Template20 extends StatefulWidget {
  const Template20({super.key});

  @override
  State<Template20> createState() => _Template20State();
}

class _Template20State extends State<Template20> {
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
                height: 248.h,
                // color: Color(0xFFF8F6FA),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 202.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        color: Color(0xFF1A1B1C),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(130.r),
                          topRight: Radius.circular(130.r),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          width: 202.w,
                          height: 200.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(130.r),
                            color: Colors.blue,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(130.r),
                            child: Image.asset(
                              AppImages.profilePicture,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      width: 280.w,
                      height: 248.h,
                      padding: EdgeInsets.all(16.w),
                      // color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Name
                          Text(
                            "John Deo",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
                              fontSize: 28.sp,
                              color: Color(0xFF5BBBFF),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          // UI Designer Button
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4.h, horizontal: 12.w),
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Text(
                              "UI DESIGNER",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h),
                          // Profile Text
                          Text(
                            "PROFILE",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Container(
                            width: 40.w,
                            height: 2.h,
                            color: Colors.purple,
                          ),
                          SizedBox(height: 8.h),
                          // Description
                          Text(
                            "A student majoring in Advertising and UI / UX design. In this CV is my design and marketing experience. Things I achieve through projects and works. Therefore, I want a job starting UI/UX as a career to stabilize and enhance my competence.",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.normal,
                              fontSize: 14.sp,
                              color: Color(0xFF4D4D4D),
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    // color: Colors.black12,
                    width: 210.w,
                    height: 550.h,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 226.w,
                          height: 180.h,
                          color: Color(0xFF1A1B1C), // Background color of the container
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Section Title
                                Text(
                                  'EDUCATION',
                                  style: TextStyle(
                                    fontFamily: 'Inter', // Ensure 'Inter' font is added
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                // Purple underline
                                Container(
                                  width: 40.w,
                                  height: 2.h,
                                  color: Color(0xFF8A2BE2), // Purple color for the underline
                                ),
                                SizedBox(height: 8.h),
                                // Education Details
                                Text(
                                  'ADVERTISING MANAGER',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'University Of Economics & Finance',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  '2020-2024',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 16.h),
                                // Another Education Details
                                Text(
                                  'UI / UX DESIGN',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'University Of Science HCM',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  '2018-2019',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          width: 226.w,
                          height: 350.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Section Title
                                Text(
                                  'EXPERTISE',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                // Blue underline
                                Container(
                                  width: 40.w,
                                  height: 2.h,
                                  color: Colors.blue, // Blue underline
                                ),
                                SizedBox(height: 16.h),
                                // Skill bars
                                _buildSkillBar('Photoshop', 0.8),
                                _buildSkillBar('Illustrator', 0.7),
                                _buildSkillBar('Indesign', 0.6),
                                _buildSkillBar('Word', 0.7),
                                _buildSkillBar('Power Point', 0.5),
                                SizedBox(height: 16.h),
                                // Contact Information
                                _buildContactItem(Icons.phone, 'Phone', '+00 123 456 789'),
                                _buildContactItem(Icons.email, 'Email', 'johndeo@gmail.com'),
                                _buildContactItem(Icons.location_on, 'Location', 'Apt. 352 375 Tonya Drive,\nHirtheport, IA 54690'),
                              ],
                            ),
                          ),
                        )


                      ],
                    ),
                  ),
                  Container(
                    width: 300.w,
                    height: 500.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 300.w,
                          height: 207.h,
                          padding: EdgeInsets.all(16.w),
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Work Experience Title
                              Text(
                                "WORK EXPERIENCE",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              // Blue Divider
                              Container(
                                width: 40.w,
                                height: 2.h,
                                color: Colors.blue,
                              ),
                              SizedBox(height: 16.h),
                              // Marketing Title
                              Text(
                                "MARKETING",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              // Date and Company Info
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 4.h, horizontal: 8.w),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(4.r),
                                    ),
                                    child: Text(
                                      "2021-2022",
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(
                                    "Maicogroup Co.Ltd/Social Media",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              // Description
                              Text(
                                  "Working environment is a real estate brokerage company, I have learned a lot about customer psychology and behavior from which to come up with appropriate strategies to close the deal as quickly as possible.",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.sp,
                                    color: Colors.grey[800],
                                  ),
                                  textAlign: TextAlign.justify),
                            ],
                          ),
                        ),
                        Container(
                          width: 300.w,
                          height: 60.h,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Portfolio Link Title
                              Text(
                                "PORTFOLIO LINK",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              // Blue Divider
                              Container(
                                width: 40.w,
                                height: 2.h,
                                color: Colors.blue,
                              ),
                              SizedBox(height: 8.h),
                              // Portfolio Link Text
                              Text(
                                "ENTER YOUR PORTFOLIO LINK",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 200.w,
                          height: 105.h,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Interests Title
                              Text(
                                "INTERESTS",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              // Blue Divider
                              Container(
                                width: 40.w,
                                height: 2.h,
                                color: Colors.blue,
                              ),
                              SizedBox(height: 8.h),
                              // Interests Icons Row
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Icon(Icons.travel_explore,
                                          size: 24.w, color: Colors.blue),
                                      SizedBox(height: 4.h),
                                      Text(
                                        "Travel",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(Icons.headset,
                                          size: 24.w, color: Colors.blue),
                                      SizedBox(height: 4.h),
                                      Text(
                                        "Music",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(Icons.edit,
                                          size: 24.w, color: Colors.blue),
                                      SizedBox(height: 4.h),
                                      Text(
                                        "Writing",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(Icons.sports_esports,
                                          size: 24.w, color: Colors.blue),
                                      SizedBox(height: 4.h),
                                      Text(
                                        "Gaming",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 180.w,
                          height: 92.h,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Expertise Title
                              Text(
                                "EXPERTISE",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              // Blue Divider
                              Container(
                                width: 40.w,
                                height: 2.h,
                                color: Colors.blue,
                              ),
                              SizedBox(height: 8.h),
                              // Expertise Levels
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "URDU",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(width: 8.w),
                                      Expanded(
                                        child: LinearProgressIndicator(
                                          value: 0.9,
                                          backgroundColor: Colors.grey[300],
                                          color: Colors.blue,
                                          minHeight: 2.h,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8.h),
                                  Row(
                                    children: [
                                      Text(
                                        "ENGLISH",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(width: 8.w),
                                      Expanded(
                                        child: LinearProgressIndicator(
                                          value: 0.7,
                                          backgroundColor: Colors.grey[300],
                                          color: Colors.blue,
                                          minHeight: 2.h,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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
  Widget _buildSkillBar(String skill, double level) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            skill,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 14.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: LinearProgressIndicator(
              value: level,
              backgroundColor: Colors.grey[300],
              color: Colors.blue,
              minHeight: 4.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String title, String detail) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.blue,
            size: 18.sp,
          ),
          SizedBox(width: 8.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                detail,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14.sp,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}
