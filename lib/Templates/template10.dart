import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Template10 extends StatefulWidget {
  const Template10({super.key});

  @override
  State<Template10> createState() => _Template10State();
}

class _Template10State extends State<Template10> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 595.w,
          height: 842.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF0338F4),
                Color(0xFFE025CE),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Container(
                  width: 298.w,
                  height: 842.h,
                  // color: Colors.yellow,
                  child: Column(
                    children: [
                      Container(
                        height: 133.h,
                        width: 298.w,
                        color: Colors.white,
                        child: Row(
                          children: [
                            // Profile Image
                            Padding(
                              padding: EdgeInsets.all(8.w),
                              child: CircleAvatar(
                                radius: 60.r,
                                backgroundImage:
                                    AssetImage(AppImages.profilePicture),
                              ),
                            ),
                            SizedBox(width: 12.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Folly',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey[800],
                                  ),
                                ),
                                Text(
                                  'Justin',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 38.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF5A00E0),
                                  ),
                                ),
                                Text(
                                  'UI/UX Designer',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 298.w,
                        height: 655.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF0338F4),
                              Color(0xFFE025CE),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildContactInfo(
                              icon: Icons.email,
                              text: 'justinfolly123@gmail.com',
                            ),
                            _buildContactInfo(
                              icon: Icons.phone,
                              text: '+1 (123) 456-7890',
                            ),
                            _buildContactInfo(
                              icon: Icons.web,
                              text: 'www.yoursitename.com',
                            ),
                            _buildContactInfo(
                              icon: Icons.location_on,
                              text: 'New York',
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color:
                                          Color(0xFFC4C4C4).withOpacity(0.25),
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                    child: Column(
                                      children: [
                                        _buildSectionTitle(
                                            'Industry Knowledge'),
                                        _buildTextItem('User Interface'),
                                        _buildTextItem('User Experience'),
                                        _buildTextItem('Product Design'),
                                        _buildTextItem('Interaction Design'),
                                        _buildTextItem('Design Research'),
                                        _buildTextItem('Web Design'),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  Container(
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xFFC4C4C4).withOpacity(0.25),
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                      child: Column(
                                        children: [
                                          _buildSectionTitle('Languages'),
                                          _buildTextItem('English'),
                                          _buildTextItem('Hindi'),
                                          _buildTextItem('French'),
                                        ],
                                      )),
                                  SizedBox(height: 10.h),
                                  Container(
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xFFC4C4C4).withOpacity(0.25),
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                      child: Column(
                                        children: [
                                          Column(
                                            children: [
                                              _buildSectionTitle('Social'),
                                              _buildTextItem(
                                                  'Yoursitename.com'),
                                              _buildTextItem(
                                                  'linkedin.com/in/YourName'),
                                              _buildTextItem(
                                                  'dribbble.com/YourName'),
                                              _buildTextItem(
                                                  'behance.com/YourName'),
                                            ],
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            _buildSectionTitle('Hobbies'),
                            _buildHobbiesRow(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 297.w,
                height: 842.h,
                // color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: 297.w,
                      height: 244.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.r),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Experience Header
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 25.h),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4.h, horizontal: 8.w),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                  child: Text(
                                    "EXPERIENCE",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50.w,
                                  height: 1.h,
                                  color: Colors.grey[400],
                                ),
                              ],
                            ),
                          ),
                          // Experience Item 1
                          _buildExperienceItem(
                            company: "Blue Moon Consultancy Studio",
                            title: "Senior UI Designer",
                            duration: "Aug 2020 - Present",
                            location: "1 year, New York",
                            description:
                                "Product team to prototype, design and deliver the UI and UX experience with a lean design process: research, design, test, and iterate.",
                          ),
                          SizedBox(height: 12.h),
                          // Experience Item 2
                          _buildExperienceItem(
                            company: "Black Yark Product Design",
                            title: "Senior UX Designer",
                            duration: "Aug 2015 - Aug 2020",
                            location: "5 years, New York",
                            description:
                                "Lead the UI design with the accountability of the design system, collaborated with product and development teams on core projects to improve product interfaces and experiences.",
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 297.w,
                      height: 200.h,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Education Header
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 20.h),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4.h, horizontal: 8.w),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                  child: Text(
                                    "EDUCATION",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50.w,
                                  height: 1.h,
                                  color: Colors.grey[400],
                                ),
                              ],
                            ),
                          ),
                          _buildEducationItem(
                            degree:
                                "Bachelor of Engineering in Information Technology",
                            institution: "SCAT Education Campus",
                            duration: "2011-2015, New York",
                          ),
                          SizedBox(height: 12.h),
                          _buildEducationItem(
                            degree: "NJIT Higher",
                            institution: "AB Experiment Campus",
                            duration: "2009-2011, New York",
                          ),

                          // Skills List (you can replace this with actual skill items)
                        ],
                      ),
                    ),
                    Container(
                      width: 297.w,
                      height: 222.h,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Skills Header
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 8.h),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4.h, horizontal: 8.w),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                  child: Text(
                                    "MY SKILLS",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50.w,
                                  height: 1.h,
                                  color: Colors.grey[400],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.h),
                          // Skills Icons and Labels
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: Wrap(
                              spacing: 15.w,
                              runSpacing: 15.h,
                              children: [
                                _buildSkillItem('Figma', AppImages.Figma10),
                                _buildSkillItem('Adobe Photoshop',
                                    AppImages.Adobephotoshop10),
                                _buildSkillItem('Adobe illustrator',
                                    AppImages.Adobeillustrator10),
                                _buildSkillItem(
                                    'Adobe Xd', AppImages.Adobexd10),
                                _buildSkillItem('Adobe indesign',
                                    AppImages.Adobeindesign10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 297.w,
                      height: 122.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30.r),
                          bottomLeft: Radius.circular(30.r),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 8.h),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4.h, horizontal: 8.w),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                  child: Text(
                                    "OTHER SKILLS",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 50.w,
                                  height: 1.h,
                                  color: Colors.grey[400],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.h),
                          // Skills Icons and Labels
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _buildOtherSkillItem('HTML 5', AppImages.html),
                                _buildOtherSkillItem('css 3', AppImages.Css10),
                                _buildOtherSkillItem(
                                    'Javascript', AppImages.Javascript10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOtherSkillItem(String skill, String imagePath) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            width: 50.w,
            height: 50.h,
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
              border: Border.all(
                color: Colors.blue,
                width: 2.w,
              ),
            ),
            child: SvgPicture.asset(
              imagePath,
            )),
        SizedBox(height: 4.h),
        Text(
          skill,
          style: GoogleFonts.montserrat(
            fontSize: 10.sp,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildSkillItem(String skill, String imagePath) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            width: 50.w,
            height: 50.h,
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
              border: Border.all(
                color: Colors.blue,
                width: 2.w,
              ),
            ),
            child: SvgPicture.asset(
              imagePath,
            )),
        SizedBox(height: 4.h),
        Text(
          skill,
          style: GoogleFonts.montserrat(
            fontSize: 10.sp,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

Widget _buildContactInfo({required IconData icon, required String text}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFFC4C4C4).withOpacity(0.25),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.white),
            SizedBox(width: 8.w),
            Text(
              text,
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildSectionTitle(String title) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
    child: Text(
      title,
      style: GoogleFonts.montserrat(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}

Widget _buildTextItem(String text) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
    child: Text(
      '• $text',
      style: GoogleFonts.montserrat(
        fontSize: 14.sp,
        color: Colors.white,
      ),
    ),
  );
}

Widget _buildHobbiesRow() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildHobbyIcon(Icons.book, 'Reading'),
        _buildHobbyIcon(Icons.directions_walk, 'Dance'),
        _buildHobbyIcon(Icons.mic, 'Singing'),
        _buildHobbyIcon(Icons.sports_soccer, 'Football'),
      ],
    ),
  );
}

Widget _buildHobbyIcon(IconData icon, String label) {
  return Column(
    children: [
      Icon(icon, color: Colors.white, size: 24.sp),
      SizedBox(height: 4.h),
      Text(
        label,
        style: GoogleFonts.montserrat(
          fontSize: 12.sp,
          color: Colors.white,
        ),
      ),
    ],
  );
}

Widget _buildExperienceItem({
  required String company,
  required String title,
  required String duration,
  required String location,
  required String description,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          company,
          style: GoogleFonts.montserrat(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: 12.sp,
            color: Colors.black54,
          ),
        ),
        Text(
          "$duration - $location",
          style: GoogleFonts.montserrat(
            fontSize: 12.sp,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          description,
          style: GoogleFonts.montserrat(
            fontSize: 12.sp,
            color: Colors.black87,
          ),
          textAlign: TextAlign.justify,
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
    padding: EdgeInsets.symmetric(horizontal: 8.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          degree,
          style: GoogleFonts.montserrat(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          institution,
          style: GoogleFonts.montserrat(
            fontSize: 12.sp,
            color: Colors.black54,
          ),
        ),
        Text(
          duration,
          style: GoogleFonts.montserrat(
            fontSize: 12.sp,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(height: 4.h),
      ],
    ),
  );
}
