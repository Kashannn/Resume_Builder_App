import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        body: Container(
          width: 595.w,
          height: 842.h,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 491.w,
                height: 119.h,
                // color: Colors.cyan,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.w),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: Image.asset(
                          AppImages.profilePicture,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Hello, I am ",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24.sp,
                                  color: Colors.black,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 3.0,
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
                                  ],
                                ),
                              ),
                              TextSpan(
                                text: "John.",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24.sp,
                                  color: Colors.purple,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 3.0,
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          "A product designer.",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 24.sp,
                            color: Colors.black,
                            shadows: [
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 555.w,
                height: 660.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 456.w,
                        height: 100.h,
                        // color: Colors.blue,
                        child: Padding(
                          padding: EdgeInsets.all(8.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Contact",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18.sp,
                                      color: Colors.purple,
                                      shadows: [
                                        Shadow(
                                          offset: Offset(2.0, 2.0),
                                          blurRadius: 3.0,
                                          color: Colors.grey.withOpacity(0.5),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "@johncarter",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.email,
                                              size: 16.w, color: Colors.black),
                                          SizedBox(width: 8.w),
                                          Text(
                                            "john@carter.com",
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4.h),
                                      Row(
                                        children: [
                                          Icon(Icons.phone,
                                              size: 16.w, color: Colors.black),
                                          SizedBox(width: 8.w),
                                          Text(
                                            "+1 (450) 780 9317",
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4.h),
                                      Row(
                                        children: [
                                          Icon(Icons.language,
                                              size: 16.w, color: Colors.black),
                                          SizedBox(width: 8.w),
                                          Text(
                                            "www.johncarter.com",
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.facebook,
                                              size: 16.w, color: Colors.black),
                                          SizedBox(width: 8.w),
                                          Text(
                                            "Facebook",
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4.h),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            AppImages.twitter,
                                            width: 10.w,
                                            height: 10.h,
                                            color: Colors.black,
                                          ),
                                          SizedBox(width: 8.w),
                                          Text(
                                            "Twitter",
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4.h),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            AppImages.linkedin,
                                            width: 10.w,
                                            height: 10.h,
                                            color: Colors.black,
                                          ),
                                          SizedBox(width: 8.w),
                                          Text(
                                            "LinkedIn",
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            AppImages.instagram,
                                            width: 10.w,
                                            height: 10.h,
                                            color: Colors.black,
                                          ),
                                          SizedBox(width: 8.w),
                                          Text(
                                            "Instagram",
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4.h),
                                      Row(
                                        children: [
                                          Icon(Icons.sports_basketball,
                                              size: 16.w,
                                              color: Colors
                                                  .black), // Example icon for Dribbble
                                          SizedBox(width: 8.w),
                                          Text(
                                            "Dribbble",
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4.h),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            AppImages.whatsapp12,
                                            width: 10.w,
                                            height: 10.h,
                                            color: Colors.black,
                                          ),
                                          SizedBox(width: 8.w),
                                          Text(
                                            "WhatsApp",
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Divider(
                                color: Colors
                                    .grey, // Adjust the color to match your design
                                thickness: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 491.w,
                        height: 60.h,
                        // color: Colors.blue,
                        child: Padding(
                          padding: EdgeInsets.all(8.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "About me",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp,
                                  color: Colors.purple,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 3.0,
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 16.w),
                              Expanded(
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque "
                                  "tempor, malesuada adipiscing congue diam quis orci amet porttitor "
                                  "blandit amet nullam sit. Blandit sed mattis pulvinar non.",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Add the bottom divider
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors
                                  .grey, // Adjust the color to match your design
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 491.w,
                        height: 30.h,
                        // color: Colors.blue,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Education",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp,
                                  color: Colors.purple,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 3.0,
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 16.w),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Master of Design",
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14.sp,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(width: 8.w),
                                            Text(
                                              "2017 – 2020",
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.sp,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "University of Oxford",
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.sp,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "B.S of Design",
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14.sp,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(width: 8.w),
                                            Text(
                                              "2013 – 2017",
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.sp,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Harvard University",
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.sp,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors
                                  .grey, // Adjust the color to match your design
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 464.w,
                        height: 245.h,
                        // color: Colors.blue,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 12.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Past experience",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp,
                                  color: Colors.purple,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 3.0,
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 16.h),
                              _buildExperienceItem(
                                iconPath: AppImages
                                    .google12, // Replace with actual image path
                                companyName: "Google",
                                jobTitle: "VP of Design",
                                duration: "2021 – 2022",
                                description:
                                    "Ultrices proin elit, tellus euismod leo id volutpat cursus integer faucibus.",
                              ),
                              SizedBox(height: 16.h),
                              _buildExperienceItem(
                                iconPath: AppImages.facebook12,
                                companyName: "Facebook",
                                jobTitle: "Senior Product Designer",
                                duration: "2020 – 2021",
                                description:
                                    "Quis orci amet porttitor blandit amet nullam sit elit purus blandit non ut non.",
                              ),
                              SizedBox(height: 16.h),
                              _buildExperienceItem(
                                iconPath: AppImages
                                    .twitter12, // Replace with actual image path
                                companyName: "Twitter",
                                jobTitle: "Lead UI Designer",
                                duration: "2019 – 2020",
                                description:
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Volutpat hac id diam volutpat quis tellus.",
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
      ),
    );
  }

  Widget _buildExperienceItem({
    required String? iconPath,
    required String companyName,
    required String jobTitle,
    required String duration,
    required String description,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          iconPath ?? "",
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    companyName,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    jobTitle,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    duration,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Text(
                description,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
