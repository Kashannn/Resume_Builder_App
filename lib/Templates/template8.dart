import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/constant/app_images_constant.dart';

class Template8 extends StatefulWidget {
  const Template8({super.key});

  @override
  State<Template8> createState() => _Template8State();
}

class _Template8State extends State<Template8> {
  String userName = 'John';
  String userRole = 'WEB DEVELOPER';
  String socialMedia = '@johncarter';
  String about =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit fames turpis pretium bibendum nisl est sagittis aliquam pretium nunc curabitur est in nulla id volutpat et nenatis at lacus.";

  List<Map<String, String>> education = [
    {
      'year': '2017 - 2020',
      'degree': 'Enter Masters Degree',
      'institution': ' Institute',
    },
    {
      'year': '2012-2015',
      'degree': 'Enter Bachelor Degree',
      'institution': 'Institute',
    },
    {
      'year': '2009-2012',
      'degree': 'Enter Bachelor Degree',
      'institution': 'Institute',
    },
  ];

  List<Map<String, String>> experiences = [
    {
      'title': 'JOB POSITION / TITLE HERE',
      'details': 'Company Name  - 2010 - 2014',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
    },
    {
      'title': 'JOB POSITION / TITLE HERE',
      'details': 'Company Name  - 2010 - 2014',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
    },
    {
      'title': 'JOB POSITION / TITLE HERE',
      'details': 'Company Name  - 2010 - 2014',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
    },
    {
      'title': 'JOB POSITION / TITLE HERE',
      'details': 'Company Name  - 2010 - 2014',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
    },
  ];

  String phone = '+001 123 456 789';
  String email = 'Info@yourmail.com';

  File? _profileImage;

  // Method to pick an image
  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _profileImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 900));
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 595.w,
                child: Column(
                  children: [

                    Container(
                      height: 90.h,
                      width: 595.w,
                      decoration: BoxDecoration(
                        color: Color(0xFF1B1F24),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 225.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: _pickImage,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: _profileImage != null
                                        ? FileImage(_profileImage!)
                                        : AssetImage(
                                                AppImages.t8)
                                            as ImageProvider,
                                    radius: 60.r,

                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () => _editUserDetails(context),
                                child: SizedBox(
                                  width: 315.w,
                                  child: SizedBox(
                                    height: 53.h,
                                    width: 223.w,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "I’m $userName, a",
                                          style: TextStyle(
                                            fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                                            color: Color(0xFF97FFC2),
                                            fontSize: 25.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          userRole,
                                          style: TextStyle(
                                            fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                                            color: Color(0xFF97FFC2),
                                            fontSize: 25.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () => _editSocialMedia(context),
                                    child: SizedBox(
                                      width: 137.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            socialMedia,
                                            style: TextStyle(
                                              fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                                              color: Color(0xFF97FFC2),
                                              fontSize: 8.sp,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SvgPicture.asset(
                                                  AppImages.twitter,
                                                  height: 10.h,
                                                  width: 10.h),
                                              SvgPicture.asset(
                                                  AppImages.facebook,
                                                  height: 10.h,
                                                  width: 10.h),
                                              SvgPicture.asset(
                                                  AppImages.instagram,
                                                  height: 10.h,
                                                  width: 10.h),
                                              SvgPicture.asset(
                                                  AppImages.linkedin,
                                                  height: 10.h,
                                                  width: 10.h),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 595.w,
                      decoration: const BoxDecoration(
                        color: Color(0xFF232B35),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 15.h),
                            child: Container(
                              width: 225.w,
                              decoration: BoxDecoration(
                                color: Color(0xFF1B1F24),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 10.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 230.w,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 40.w,
                                              child: Divider(
                                                color: Color(0xFFFFFFFF),
                                                thickness: 2.h,
                                              ),
                                            ),
                                            Text(
                                              "About Me",
                                              style: TextStyle(
                                                fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF97FFC2),
                                                fontSize: 16.sp,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            GestureDetector(
                                              onTap: () => _editAbout(context),
                                              child: Text(
                                                about,
                                                style: TextStyle(
                                                  fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xFFC3CAD5),
                                                  fontSize: 9.sp,
                                                ),
                                              ),
                                            )
                                          ]),
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    SizedBox(
                                      width: 177.w,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 40.w,
                                              child: Divider(
                                                color: Color(0xFFFFFFFF),
                                                thickness: 2.h,
                                              ),
                                            ),
                                            Text(
                                              "My education",
                                              style: TextStyle(
                                                fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF97FFC2),
                                                fontSize: 16.sp,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            //LOOP FOR EDUCATION
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: education.map((entry) {
                                                return Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 10.h),
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        _editEducationItem(
                                                            context, entry),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              entry['institution'] ??
                                                                  '',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    GoogleFonts.spaceGrotesk().fontFamily,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Color(
                                                                    0xFFC3CAD5),
                                                                fontSize: 9.sp,
                                                              ),
                                                            ),
                                                            Text(
                                                              "/",
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    GoogleFonts.spaceGrotesk().fontFamily,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                color: Color(
                                                                    0xFF075FE4),
                                                                fontSize: 15.sp,
                                                              ),
                                                            ),
                                                            Text(
                                                              entry['year'] ??
                                                                  '',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    GoogleFonts.spaceGrotesk().fontFamily,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Color(
                                                                    0xFFC3CAD5),
                                                                fontSize: 9.sp,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          entry['degree'] ?? '',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                GoogleFonts.spaceGrotesk().fontFamily,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: Color(
                                                                0xFFFFFFFF),
                                                            fontSize: 10.sp,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ]),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    SizedBox(
                                      //width: 157.w,
                                      child: GestureDetector(
                                        onTap: () =>
                                            _editContactDetails(context),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 40.w,
                                              child: Divider(
                                                color: Color(0xFFFFFFFF),
                                                thickness: 2.h,
                                              ),
                                            ),
                                            Text(
                                              "Contact information",
                                              style: TextStyle(
                                                fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF97FFC2),
                                                fontSize: 16.sp,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              "Email",
                                              style: TextStyle(
                                                fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFFC3CAD5),
                                                fontSize: 9.sp,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              email,
                                              style: TextStyle(
                                                fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFFC3CAD5),
                                                fontSize: 9.sp,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              "Call:",
                                              style: TextStyle(
                                                fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFFC3CAD5),
                                                fontSize: 9.sp,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              phone,
                                              style: TextStyle(
                                                fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFFC3CAD5),
                                                fontSize: 9.sp,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Divider(
                                              color: Color(0xFFFFFFFF),
                                              thickness: 2.h,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 237.w,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 40.w,
                                            child: Divider(
                                              color: Color(0xFFFFFFFF),
                                              thickness: 2.h,
                                            ),
                                          ),
                                          Text(
                                            "Skills",
                                            style: TextStyle(
                                              fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFF97FFC2),
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                          Container(
                                            width: 200.w,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SvgPicture.asset(
                                                        AppImages.java),
                                                    SizedBox(height: 5.h),
                                                    Text("Java",
                                                        style: TextStyle(
                                                          fontFamily:
                                                              GoogleFonts.spaceGrotesk().fontFamily,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color:
                                                              Color(0xFFFFFFFF),
                                                          fontSize: 8.sp,
                                                        ))
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SvgPicture.asset(
                                                        AppImages.html),
                                                    SizedBox(height: 5.h),
                                                    Text("Html /Css",
                                                        style: TextStyle(
                                                          fontFamily:
                                                              GoogleFonts.spaceGrotesk().fontFamily,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color:
                                                              Color(0xFFFFFFFF),
                                                          fontSize: 8.sp,
                                                        ))
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SvgPicture.asset(
                                                        AppImages.react),
                                                    SizedBox(height: 5.h),
                                                    Text("React Java",
                                                        style: TextStyle(
                                                          fontFamily:
                                                              GoogleFonts.spaceGrotesk().fontFamily,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color:
                                                              Color(0xFFFFFFFF),
                                                          fontSize: 8.sp,
                                                        ))
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SvgPicture.asset(
                                                        AppImages.web),
                                                    SizedBox(height: 5.h),
                                                    Text(
                                                      "Web Flutter",
                                                      style: TextStyle(
                                                        fontFamily:
                                                            GoogleFonts.spaceGrotesk().fontFamily,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            Color(0xFFFFFFFF),
                                                        fontSize: 8.sp,
                                                      ),
                                                    )
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
                            ),
                          ),
                          SizedBox(
                            width: 267.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  //width: 130.w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 40.w,
                                        child: Divider(
                                          color: Color(0xFF97FFC2),
                                          thickness: 2.h,
                                        ),
                                      ),
                                      Text(
                                        "Past Experience",
                                        style: TextStyle(
                                          fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF97FFC2),
                                          fontSize: 16.sp,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                16.verticalSpace,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: experiences.map((experience) {
                                    return Padding(
                                      padding: EdgeInsets.only(bottom: 10.h),
                                      child: SizedBox(
                                        height: 80.h,
                                        width: 267.w,
                                        child: GestureDetector(
                                          onTap: () => _editExperienceItem(
                                              context, experience),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    experience['title'] ?? '',
                                                    style: TextStyle(
                                                      fontFamily:
                                                          GoogleFonts.spaceGrotesk().fontFamily,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color(0xFFFFFFFF),
                                                      fontSize: 12.sp,
                                                    ),
                                                  ),
                                                  Text(
                                                    experience['details'] ?? '',
                                                    style: TextStyle(
                                                      fontFamily:
                                                          GoogleFonts.spaceGrotesk().fontFamily,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Color(0xFFFFFFFF),
                                                      fontSize: 12.sp,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                experience['description'] ?? '',
                                                style: TextStyle(
                                                  fontFamily: GoogleFonts.spaceGrotesk().fontFamily,

                                                  color: Color(0xFFFFFFFF),
                                                  fontSize: 10.sp,
                                                ),
                                              ),
                                              Divider(
                                                color: Color(0xFF5D6C83),
                                                thickness: 1.5.h,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
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

  void _editUserDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController nameController =
            TextEditingController(text: userName);
        final TextEditingController roleController =
            TextEditingController(text: userRole);

        return AlertDialog(
          title: const Text('Edit User Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: roleController,
                decoration: const InputDecoration(labelText: 'Role'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  userName = nameController.text;
                  userRole = roleController.text;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _editSocialMedia(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController nameController =
            TextEditingController(text: socialMedia);

        return AlertDialog(
          title: const Text('Edit User Name'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'UserName'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  socialMedia = nameController.text;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _editAbout(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController aboutController =
            TextEditingController(text: about);

        return AlertDialog(
          title: const Text('Edit About'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: aboutController,
                decoration: const InputDecoration(labelText: 'About'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  about = aboutController.text;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _editEducationItem(BuildContext context, Map<String, String> item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController yearController =
            TextEditingController(text: item['year']);
        final TextEditingController degreeController =
            TextEditingController(text: item['degree']);
        final TextEditingController institutionController =
            TextEditingController(text: item['institution']);

        return AlertDialog(
          title: const Text('Edit Education'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: yearController,
                decoration: const InputDecoration(labelText: 'Year'),
              ),
              TextField(
                controller: degreeController,
                decoration: const InputDecoration(labelText: 'Degree'),
              ),
              TextField(
                controller: institutionController,
                decoration: const InputDecoration(labelText: 'Institution'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  item['year'] = yearController.text;
                  item['degree'] = degreeController.text;
                  item['institution'] = institutionController.text;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _editContactDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController phoneController =
            TextEditingController(text: phone);
        final TextEditingController emailController =
            TextEditingController(text: email);

        return AlertDialog(
          title: const Text('Edit Contact Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(labelText: 'Phone'),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  phone = phoneController.text;
                  email = emailController.text;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _editExperienceItem(BuildContext context, Map<String, String> item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController titleController =
            TextEditingController(text: item['title']);
        final TextEditingController detailsController =
            TextEditingController(text: item['details']);
        final TextEditingController descriptionController =
            TextEditingController(text: item['description']);

        return AlertDialog(
          title: const Text('Edit Experience'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: detailsController,
                decoration: const InputDecoration(labelText: 'Details'),
              ),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  item['title'] = titleController.text;
                  item['details'] = detailsController.text;
                  item['description'] = descriptionController.text;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
