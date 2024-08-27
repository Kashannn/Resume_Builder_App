import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constant/app_images_constant.dart';

class Template14 extends StatefulWidget {
  const Template14({super.key});

  @override
  State<Template14> createState() => _Template14State();
}

class _Template14State extends State<Template14> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(596, 842));
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 842.h,
          width: 596.w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 842.h,
                      width: 206,
                      color: Color(0xFF1B2530),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 88.r,
                            backgroundColor: Color(0xFF00FF6A),
                            child: CircleAvatar(
                              radius: 85.r,
                              backgroundImage:
                                  AssetImage(AppImages.profilePicture),
                            ),
                          ),
                          SizedBox(height: 100.h),
                          SizedBox(
                            height: 600.h,
                            width: 240.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Contact Section
                                buildSectionTitle('CONTACT'),
                                SizedBox(height: 8.h),
                                buildContactItem(
                                    Icons.email, 'contact@johncarter.com'),
                                SizedBox(height: 16.h),
                                buildContactItem(
                                    Icons.phone, '(487) 806 - 7204'),

                                // Divider
                                buildDivider(),

                                // Skills Section
                                buildSectionTitle('SKILLS'),
                                SizedBox(height: 15.h),
                                buildListItem('Corporate & Compliance'),
                                buildListItem('Labor & Employment'),
                                buildListItem('Intellectual Property'),
                                buildListItem('Mergers & Acquisitions'),
                                buildListItem('Business Taxation'),
                                buildListItem('Dispute Resolution'),
                                buildDivider(),
                                buildSectionTitle('VALUES'),
                                SizedBox(height: 15.h),
                                buildListItem('Excellence'),
                                buildListItem('Trust'),
                                buildListItem('Integrity'),
                                buildListItem('Accountability'),
                                Spacer(),
                                buildSectionTitle('@johncarter'),
                                SizedBox(height: 15.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      icon: SvgPicture.asset(
                                        AppImages.facebook,
                                        width: 24.0,
                                        height: 24.0,
                                      ),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: SvgPicture.asset(
                                        AppImages.linkedin,
                                        width: 24.0,
                                        height: 24.0,
                                      ),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: SvgPicture.asset(
                                        AppImages.instagram,
                                        width: 24.0,
                                        height: 24.0,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 842.h,
                      width: 321.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 191.h,
                            width: 321.w,
                            color: Color(0xFF1B2530).withOpacity(0.9),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 24.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 2.h,
                                      width: 20.w,
                                      color: Color(0xFF3ABD78),
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      'ATTORNEY',
                                      style: GoogleFonts.mulish(
                                        color: Color(0xFFCCD6E0),
                                        fontSize: 14.sp,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12.h),
                                Text(
                                  'John Carter',
                                  style: GoogleFonts.playfairDisplay(
                                    color: Colors.white,
                                    fontSize: 37.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 15.h),
                                SizedBox(
                                  height: 70.h,
                                  width: 311.w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 2.h,
                                            width: 20.w,
                                            color: Color(0xFF3ABD78),
                                          ),
                                          SizedBox(width: 8.w),
                                          Text(
                                            'ABOUT JOHN CARTER',
                                            style: GoogleFonts.playfairDisplay(
                                              color: Color(0xFF2C3848),
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 12.h),
                                      Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Justo, euismod felis, eros mi purus in est. Vitae sodales tellus vitae, tincidunt in sed orci. Blandit proin posuere dui vitae.',
                                        style: GoogleFonts.mulish(
                                          color: Color(0xFF4A5568),
                                          fontSize: 10.sp,
                                          height: 1.5,
                                        ),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15.h),
                                SizedBox(
                                  height: 300.h,
                                  width: 311.w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 2.h,
                                            width: 20.w,
                                            color: Colors.green,
                                          ),
                                          SizedBox(width: 8.w),
                                          Text(
                                            'WORK EXPERIENCE',
                                            style: GoogleFonts.playfairDisplay(
                                              color: Colors.black,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 12.h),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'FACEBOOK',
                                            style: GoogleFonts.mulish(
                                              color: Colors.green,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 8.h),
                                          Row(
                                            children: [
                                              Text(
                                                'LEGAL COURT',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.black,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 8.w),
                                              Text(
                                                '|',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.black,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                              SizedBox(width: 8.w),
                                              Text(
                                                '2019 - PRESENT',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.grey,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 8.h),
                                          Text(
                                            'Ultrices proin elit, tellus euismod. Leo id volutpat cursus integer faucibus ultrices. Convallis ipsum eu adipiscing lorem.',
                                            style: GoogleFonts.mulish(
                                              color:
                                                  Colors.black.withOpacity(0.7),
                                              fontSize: 12.sp,
                                              height: 1.5,
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 16.h),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'GOOGLE',
                                            style: GoogleFonts.mulish(
                                              color: Colors.green,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 8.h),
                                          Row(
                                            children: [
                                              Text(
                                                'TRADEMARK ATTORNEY',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.black,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(width: 8.w),
                                              Text(
                                                '|',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.black,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                              SizedBox(width: 8.w),
                                              Text(
                                                '2018 - 2019',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.grey,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 8.h),
                                          Text(
                                            'Lorem ipsum dolor sit amet consectetur adipiscing elit justo euismod felis eros mi purus in est vitae sodales tellus vitae tincidunt in sed orci.',
                                            style: GoogleFonts.mulish(
                                              color:
                                                  Colors.black.withOpacity(0.7),
                                              fontSize: 12.sp,
                                              height: 1.5,
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 16.h),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'TWITTER',
                                            style: GoogleFonts.mulish(
                                              color: Colors.green,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 8.h),
                                          Row(
                                            children: [
                                              Text(
                                                'ASSOCIATE ATTORNEY',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.black,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                textAlign: TextAlign.justify,
                                              ),
                                              SizedBox(width: 8.w),
                                              Text(
                                                '|',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.black,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                              SizedBox(width: 8.w),
                                              Text(
                                                '2017 - 2018',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.grey,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 4.h),
                                          Text(
                                            'Lorem ipsum dolor sit amet consectetur adipiscing elit vitae cursus enim eget elit tincidunt platea egestas tempus.',
                                            style: GoogleFonts.mulish(
                                              color:
                                                  Colors.black.withOpacity(0.7),
                                              fontSize: 12.sp,
                                              height: 1.5,
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                SizedBox(
                                  height: 168.h,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 2.h,
                                            width: 20.w,
                                            color: Colors.green,
                                          ),
                                          SizedBox(width: 8.w),
                                          Text(
                                            'EDUCATION',
                                            style: GoogleFonts.playfairDisplay(
                                              color: Colors.black,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 2,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 12.h),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'B.S OF ECONOMICS',
                                            style: GoogleFonts.mulish(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 4.h),
                                          Row(
                                            children: [
                                              Text(
                                                'Harvard',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.grey,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                              SizedBox(width: 8.w),
                                              Text(
                                                '|',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.grey,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                              SizedBox(width: 8.w),
                                              Text(
                                                '2017 - 2020',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.grey,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 16.h),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'B.A POLITICAL SCIENCE',
                                            style: GoogleFonts.mulish(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 4.h),
                                          Row(
                                            children: [
                                              Text(
                                                'Stanford',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.grey,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                              SizedBox(width: 8.w),
                                              Text(
                                                '|',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.grey,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                              SizedBox(width: 8.w),
                                              Text(
                                                '2013 - 2017',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.grey,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 16.h),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'B.S OF LAW AND BUSINESS ADM.',
                                            style: GoogleFonts.mulish(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 4.h),
                                          Row(
                                            children: [
                                              Text(
                                                'MIT',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.grey,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                              SizedBox(width: 8.w),
                                              Text(
                                                '|',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.grey,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                              SizedBox(width: 8.w),
                                              Text(
                                                '2009 - 2013',
                                                style: GoogleFonts.mulish(
                                                  color: Colors.grey,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildSectionTitle(String title) {
  return Text(
    title,
    style: TextStyle(
      fontFamily: 'PlayfairDisplay',
      color: Colors.white,
      fontSize: 14.sp,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5,
    ),
  );
}

Widget buildContactItem(IconData icon, String text) {
  return Row(
    children: [
      Icon(icon, color: Colors.white, size: 20.sp),
      SizedBox(width: 8.w),
      Expanded(
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'mulish',
            color: Colors.white,
            fontSize: 12.sp,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ],
  );
}

Widget buildListItem(String text) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4.h),
    child: Row(
      children: [
        Text(
          '•',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
          ),
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
  );
}

Widget buildDivider() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 12.h),
    child: Divider(
      color: Colors.green,
      thickness: 2,
    ),
  );
}
