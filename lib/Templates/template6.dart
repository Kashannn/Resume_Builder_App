import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constant/app_images_constant.dart';

class Template6 extends StatefulWidget {
  const Template6({super.key});

  @override
  State<Template6> createState() => _Template6State();
}

class _Template6State extends State<Template6> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(595, 842), minTextAdapt: true);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 595.w,
          height: 842.h,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Top Section
                Container(
                  width: 595.w,
                  height: 185.h,
                  color: Color(0xFF333132),
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 72.r,
                        backgroundColor: Color(0xFFFFA200),
                        child: CircleAvatar(
                          radius: 70.r,
                          backgroundImage: AssetImage(AppImages.profilePicture),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Emily Johnson",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 35.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "UI/UX Designer",
                            style: TextStyle(
                              color: Color(0xFFFFA200),
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                // Main Content
                Row(
                  children: [
                    Container(
                      width: 200.w,
                      height: 657.h,
                      color: Color(0xFF333132),
                      padding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // Contact Section
                          buildSectionTitle('Contact', Icons.person),
                          SizedBox(height: 16.h),
                          buildContactItem(Icons.phone, '+123-456-7890'),
                          buildContactItem(Icons.link, 'Linkedin profile'),
                          buildContactItem(Icons.email, 'hello@mywebsite.com'),
                          buildContactItem(Icons.web, 'www.mywebsite.com'),
                          Divider(color: Colors.white70, thickness: 1.0),
                          // Skills Section
                          buildSectionTitle('Skills', Icons.lightbulb),
                          SizedBox(height: 16.h),
                          buildListItem('UI/UX'),
                          buildListItem('Visual Design'),
                          buildListItem('Wireframes'),
                          buildListItem('Storyboards'),
                          buildListItem('User Flows'),
                          Divider(color: Colors.white70, thickness: 1.0),
                          // Tools Section
                          buildSectionTitle('Tools', Icons.build),
                          SizedBox(height: 16.h),
                          buildListItem('Figma'),
                          buildListItem('Adobe XD'),
                          buildListItem('WordPress'),
                          buildListItem('Webflow'),
                        ],
                      ),
                    ),
                    // Right Section
                    Container(
                      color: Colors.white,
                      width: 395.w,
                      height: 657.h,
                      padding: EdgeInsets.all(16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildSectionHeader('Personal Profile'),
                          Divider(color: Colors.black87, thickness: 1.0),
                          SizedBox(height: 8.h),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus scelerisque, arcu in pellentesque tincidunt, odio justo vulputate nulla, id convallis justo tortor sed odio. Vestibulum ante ipsum primis in faucibus orci luctus.',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.black,
                              height: 1.5,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 16.h),

                          // Work Experience Section
                          buildSectionHeader('Work Experience'),
                          Divider(color: Colors.black87, thickness: 1.0),
                          SizedBox(height: 8.h),
                          buildExperienceItem(
                            'Job position | Company Name',
                            '2017-2018',
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus scelerisque, arcu in pellentesque tincidunt, odio justo vulputate nulla, id convallis justo tortor sed odio. Vestibulum ante ipsum primis in faucibus orci luctus.',
                          ),
                          SizedBox(height: 12.h),
                          buildExperienceItem(
                            'Job position | Company Name',
                            '2018-2020',
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus scelerisque, arcu in pellentesque tincidunt, odio justo vulputate nulla, id convallis justo tortor sed odio. Vestibulum ante ipsum primis in faucibus orci luctus.',
                          ),
                          SizedBox(height: 12.h),
                          buildExperienceItem(
                            'Job position | Company Name',
                            '2020-2023',
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus scelerisque, arcu in pellentesque tincidunt, odio justo vulputate nulla, id convallis justo tortor sed odio. Vestibulum ante ipsum primis in faucibus orci luctus.',
                          ),
                          SizedBox(height: 16.h),

                          // Education Section
                          buildSectionHeader('Education'),
                          Divider(color: Colors.black87, thickness: 1.0),
                          SizedBox(height: 8.h),
                          buildEducationItem(
                            'Degree Name',
                            'University Name Here',
                            '2014-2020',
                          ),
                          SizedBox(height: 12.h),
                          buildEducationItem(
                            'Degree Name',
                            'University Name Here',
                            '2013-2016',
                          ),
                          SizedBox(height: 16.h),
                          buildSectionHeader('Referees'),
                          Divider(color: Colors.black87, thickness: 1.0),
                          SizedBox(height: 8.h),
                          Text(
                            'OnRequest',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: Colors.orangeAccent, size: 20.sp),
        SizedBox(width: 8.w),
        Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget buildContactItem(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          Icon(icon, color: Colors.orangeAccent, size: 18.sp),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListItem(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14.sp,
          color: Colors.white70,
        ),
      ),
    );
  }

  Widget buildSectionHeader(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  Widget buildExperienceItem(
      String title, String duration, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Text(
              duration,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        SizedBox(height: 6.h),
        Text(
          description,
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.black54,
            height: 1.5,
          ),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }

  Widget buildEducationItem(String degree, String university, String duration) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          degree,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 4.h),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              university,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              duration,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
