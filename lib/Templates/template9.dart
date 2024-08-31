import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Template9 extends StatefulWidget {
  const Template9({super.key});

  @override
  State<Template9> createState() => _Template9State();
}

class _Template9State extends State<Template9> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF333132),
        body: Column(
          children: [
            Row(
              children: [
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.r),
                  ),
                  child: Container(
                    width: 250.w,
                    height: 798.h,
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                        color: Color(0xFF333132),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.r),
                        )),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                          child: CircleAvatar(
                            radius: 90.r,
                            backgroundColor: Color(0xFFFFA200),
                            child: CircleAvatar(
                              radius: 85.r,
                              backgroundImage: AssetImage(AppImages
                                  .profilePicture), // Replace with your image path
                            ),
                          ),
                        ),
                        Text(
                          'Contact',
                          style: GoogleFonts.poppins(
                            fontSize: 22.sp,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1.5.h,
                          indent: 20.w,
                          endIndent: 20.w,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 20.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.orange,
                                size: 24.sp,
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  '+123-456-7890',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 20.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.link,
                                color: Colors.orange,
                                size: 24.sp,
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  'Linkedin profile',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 20.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.email,
                                color: Colors.orange,
                                size: 24.sp,
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  'hello@mywebsite.com',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 20.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.web,
                                color: Colors.orange,
                                size: 24.sp,
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  'www.mywebsite.com',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Skills',
                          style: GoogleFonts.poppins(
                            fontSize: 22.sp,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1.5.h,
                          indent: 20.w,
                          endIndent: 20.w,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.h, horizontal: 20.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.orange,
                                size: 8.sp,
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  'UI/UX',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.h, horizontal: 20.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.orange,
                                size: 8.sp,
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  'Visual Design',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.h, horizontal: 20.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.orange,
                                size: 8.sp,
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  'Wireframes',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.h, horizontal: 20.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.orange,
                                size: 8.sp,
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  'Storyboards',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.h, horizontal: 20.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.orange,
                                size: 8.sp,
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  'User Flows',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Tools',
                          style: GoogleFonts.poppins(
                            fontSize: 22.sp,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1.5.h,
                          indent: 20.w,
                          endIndent: 20.w,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.h, horizontal: 20.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.orange,
                                size: 8.sp,
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  'Figma',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.h, horizontal: 20.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.orange,
                                size: 8.sp,
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  'Adobe XD',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.h, horizontal: 20.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.orange,
                                size: 8.sp,
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  'WordPress',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.h, horizontal: 20.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.orange,
                                size: 8.sp,
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  'Webflow',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 345.w,
                  height: 798.h,
                  color: Colors.grey[700],
                  child: Column(
                    children: [
                      Container(
                        width: 345.w,
                        height: 200.h,
                        color: Colors.grey[800],
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 24.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Emily Johnson',
                              style: GoogleFonts.poppins(
                                fontSize: 36.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              'UI/UX Designer',
                              style: GoogleFonts.poppins(
                                fontSize: 20.sp,
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 345.w,
                        height: 598.h,
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Personal Profile Section
                            Text(
                              'Personal Profile',
                              style: GoogleFonts.poppins(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus scelerisque, arcu in pellentesque tincidunt, odio justo vulputate nulla, id convallis justo tortor sed odio. Vestibulum ante ipsum primis in faucibus orci luctus.',
                              style: GoogleFonts.poppins(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),

                            // Work Experience Section
                            Text(
                              'Work Experience',
                              style: GoogleFonts.poppins(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Divider(color: Colors.black),
                            _buildWorkExperienceItem(
                              position: 'Job position',
                              company: 'Company Name',
                              duration: '2017-2018',
                              description:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus scelerisque, arcu in pellentesque tincidunt, odio justo vulputate nulla, id convallis justo tortor sed odio. Vestibulum ante ipsum primis in faucibus orci luctus.',
                            ),
                            _buildWorkExperienceItem(
                              position: 'Job position',
                              company: 'Company Name',
                              duration: '2018-2020',
                              description:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus scelerisque, arcu in pellentesque tincidunt, odio justo vulputate nulla, id convallis justo tortor sed odio. Vestibulum ante ipsum primis in faucibus orci luctus.',
                            ),
                            _buildWorkExperienceItem(
                              position: 'Job position',
                              company: 'Company Name',
                              duration: '2020-2023',
                              description:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus scelerisque, arcu in pellentesque tincidunt, odio justo vulputate nulla, id convallis justo tortor sed odio. Vestibulum ante ipsum primis in faucibus orci luctus.',
                            ),

                            // Education Section
                            Text(
                              'Education',
                              style: GoogleFonts.poppins(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Divider(color: Colors.black),
                            _buildEducationItem(
                              degree: 'Degree Name',
                              institution: 'University Name Here',
                              duration: '2014-2020',
                            ),
                            _buildEducationItem(
                              degree: 'Degree Name',
                              institution: 'University Name Here',
                              duration: '2013-2016',
                            ),

                            // Referees Section
                            Text(
                              'Referees',
                              style: GoogleFonts.poppins(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Divider(color: Colors.black),
                            Text(
                              'OnRequest',
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildWorkExperienceItem({
    required String position,
    required String company,
    required String duration,
    required String description,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$position | $company',
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                duration,
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Text(
            description,
            style: GoogleFonts.poppins(
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEducationItem({
    required String degree,
    required String institution,
    required String duration,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            degree,
            style: GoogleFonts.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            institution,
            style: GoogleFonts.poppins(
              fontSize: 13.sp,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            duration,
            style: GoogleFonts.poppins(
              fontSize: 13.sp,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
