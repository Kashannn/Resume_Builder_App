import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constant/app_images_constant.dart';

class Template1 extends StatefulWidget {
  const Template1({super.key});

  @override
  State<Template1> createState() => _Template1State();
}

class _Template1State extends State<Template1> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            width: 595.w,
            height: 842.h,
            color: Color(0xFF343C43),
          ),
          Container(
            width: 205.w,
            height: 842.h,
            color: Color(0xFF353443),
          ),
          Positioned(
            top: 30.h,
            left: 34.w,
            child: Container(
              width: 252.w,
              height: 733.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 73.r,
                      backgroundColor: Color(0xFFB3B3B1),
                      child: CircleAvatar(
                        radius: 70.r,
                        backgroundImage: AssetImage(AppImages.profilePicture),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text("JANE DOE",
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: Color(0xFF00101F),
                        )),
                    SizedBox(height: 5.h),
                    Text(
                      "TITLE GOES HERE",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 9.sp,
                        color: Color(0xFF00101F),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      width: 193.w,
                      height: 510.h,
                      // color: Colors.black,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 12.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildSectionHeader("BASIC INFO"),
                            SizedBox(height: 8.h),
                            _buildInfoItem("Name", "Jane Doe Williams"),
                            _buildInfoItem("ID", "1-2345-6789"),
                            _buildInfoItem("Phone", "(+506) 0987-6543"),
                            _buildInfoItem("Email", "janedoe@gmail.com"),
                            _buildInfoItem("Address", "Somewhere, Costa Rica"),
                            SizedBox(height: 16.h),
                            _buildSectionHeader("ABILITIES"),
                            SizedBox(height: 8.h),
                            _buildBulletPoint(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, set do."),
                            _buildBulletPoint("Exercitation ullamco laboris."),
                            _buildBulletPoint(
                                "Ut enim ad minim veniam, quis nostrud."),
                            _buildBulletPoint(
                                "Aliquip ex ea commodo consequat ipsum."),
                            SizedBox(height: 16.h),
                            _buildSectionHeader("REFERENCES"),
                            SizedBox(height: 8.h),
                            _buildReferenceItem(
                              name: "SOMEONES NAME",
                              title: "Production Manager and Marketer",
                              email: "someone@hotmail.com",
                              phone: "(+510) 5600-3700",
                            ),
                            SizedBox(height: 8.h),
                            _buildReferenceItem(
                              name: "LOREM IPSUM",
                              title: "Production Data Operator",
                              email: "someone@gmail.com",
                              phone: "(+756) 1200-3400",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 30.h,
            left: 290.w,
            child: Container(
              width: 260.w,
              height: 760.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionHeader("Profile"),
                    SizedBox(height: 8.h),
                    _buildProfileItem(
                      title: "Desc",
                      description:
                          "Position title and any relevant details. I am a tech enthusiast, "
                          "I am passionate about designs, goal driven, quick to learn and a highly "
                          "productive individual. I have various industry ready design skills, "
                          "I am experienced in various software design tools, experienced in providing "
                          "technical support to users, collaborated on design projects and working in a "
                          "team-oriented environment. Both remotely and on-site.",
                    ),
                    SizedBox(height: 16.h),
                    _buildProfileItem(
                      title: "Skills",
                      skills: [
                        _buildSkillBar("Figma - XD", 0.8),
                        _buildSkillBar("Photoshop", 0.7),
                        _buildSkillBar("Illustrator", 0.6),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    _buildProfileItem(
                      title: "Experience",
                      description:
                          "As the creative director at Longchris foundation, I worked to create "
                          "graphic design and marketing solutions to deliver engaging content that meets "
                          "our audience’s needs. Designed the foundation’s website and managed its contents "
                          "to pass standard and accurate brand identity.",
                    ),
                    SizedBox(height: 16.h),
                    _buildSectionHeader("EDUCATION"),
                    SizedBox(height: 8.h),
                    _buildEducationItem("2014", "A UNIVERSITY TITLE",
                        "Some Educational Institution"),
                    SizedBox(height: 8.h),
                    _buildEducationItem(
                        "2006", "DOLOR SIT AMET", "Utnim Ad Minim Veniam"),
                    SizedBox(height: 8.h),
                    _buildEducationItem("2005", "EIUSMOD TEMPOR INCIDIDUNT",
                        "National Institute"),
                    SizedBox(height: 8.h),
                    _buildEducationItem(
                        "2004", "EXERCITATION ULLAMCO", "Laboris Nisi Aliquip"),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: Color(0xFF00EBFA),
          ),
        ),
        Divider(
          color: Colors.grey,
          thickness: 1,
        ),
      ],
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: Colors.black,
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.circle, size: 6.w, color: Colors.white),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReferenceItem({
    required String name,
    required String title,
    required String email,
    required String phone,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            email,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            phone,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSectionHeader(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: Color(0xFF00CFFF), // Light blue color
          ),
          textAlign: TextAlign.justify,
        ),
        Divider(
          color: Colors.grey, // Adjust the color to match your design
          thickness: 1,
        ),
      ],
    );
  }

  Widget _buildProfileItem({
    required String title,
    String? description,
    List<Widget>? skills,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.circle, size: 6.w, color: Color(0xFF00CFFF)),
            SizedBox(width: 8.w),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
        if (description != null) ...[
          SizedBox(height: 8.h),
          Text(
            description,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
        if (skills != null) ...[
          SizedBox(height: 8.h),
          Column(children: skills),
        ],
      ],
    );
  }

  Widget _buildSkillBar(String skill, double proficiency) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skill,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 12.sp,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 4.h),
        Stack(
          children: [
            Container(
              height: 6.h,
              width: 200.w,
              color: Colors.grey[700],
            ),
            Container(
              height: 6.h,
              width: 200.w * proficiency,
              color: Color(0xFF00CFFF),
            ),
          ],
        ),
        SizedBox(height: 8.h),
      ],
    );
  }

  Widget _buildEducationItem(String year, String title, String institution) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Icon(Icons.circle, size: 6.w, color: Color(0xFF00CFFF)),
            SizedBox(height: 4.h),
            Container(
              width: 2.w,
              height: 50.h,
              color: Colors.grey,
            ),
          ],
        ),
        SizedBox(width: 8.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              year,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              institution,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
