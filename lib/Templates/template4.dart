import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import '../utils/constant/app_images_constant.dart';

class Template4 extends StatefulWidget {
  const Template4({super.key});

  @override
  State<Template4> createState() => _Template4State();
}

class _Template4State extends State<Template4> {

  String userName = 'Peter';
  String userRole = 'Product Designer';
  String socialMedia = '@peterdesigner';
  String email = 'contact@peterdesigner.com';
  String mobile = '+001 123 456 789';
  String portfolio = 'www.yourportfolio.com';
  String about1 = "Lorem ipsum dolor sit amet consectetur adipiscing elit neque tempor malesuada adipiscing congue diam quis orci amet porttitor blandit amet nullam sit elit, purus blandit non ut non quam curabitur.";
  String about2 = "Quis orci amet porttitor blandit amet nullam sit elit purus blandit non ut non quam curabitur lorem ipsum dolor sit amet consectetur adipiscing elit neque tempor, malesuada adipiscing congue diam.";
  List<Map<String, String>> experiences = [
    {
      'title': 'JOB POSITION',
      'details': 'Company Name',
      'description':
      'from - to',
    },
    {
      'title': 'JOB POSITION ',
      'details': 'Company Name',
      'description':
      'from - to',
    },
    {
      'title': 'JOB POSITION',
      'details': 'Company Name',
      'description':
      'from - to',
    },

  ];

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
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //height: 798.h,
                width: 595.w,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF242424),
                      Color(0xFF343434),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.w, vertical: 20.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //header section
                      SizedBox(
                        width: 525.w,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: _pickImage,
                                  child: CircleAvatar(
                                    radius: 40.r,
                                    backgroundImage: _profileImage != null
                                        ? FileImage(_profileImage!)
                                        : AssetImage(AppImages.Template8ProfilePhoto) as ImageProvider,
                                  ),
                                ),
                                SizedBox(
                                  width: 25.w,
                                ),
                                GestureDetector(
                                  onTap: ()=> _editUserDetails(context),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Hello, I am $userName.',
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          )),
                                      Text(
                                        'A $userRole.',
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 160.h,
                            width: 152.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Skills',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: Color(0xFF242424),
                                      border: Border.all(
                                        color: Colors.white,
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          color: Color(0xFF646464),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: SvgPicture.asset(
                                            AppImages.product,
                                            height: 14.h,
                                            width: 14.w,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Product Design',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: Color(0xFF242424),
                                      border: Border.all(
                                        color: Colors.white,
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          color: Color(0xFF646464),
                                        ),
                                        child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: SvgPicture.asset(
                                              AppImages.search,
                                              height: 14.h,
                                              width: 14.w,
                                            )),
                                      ),
                                      Text(
                                        'UX Research',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: Color(0xFF242424),
                                      border: Border.all(
                                        color: Colors.white,
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          color: Color(0xFF646464),
                                        ),
                                        child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: SvgPicture.asset(
                                              AppImages.phone,
                                              height: 14.h,
                                              width: 14.w,
                                            )),
                                      ),
                                      Text(
                                        'UI/UX Design',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.r),
                                      color: Color(0xFF242424),
                                      border: Border.all(
                                        color: Colors.white,
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          color: Color(0xFF646464),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: SvgPicture.asset(
                                            AppImages.icon,
                                            height: 14.h,
                                            width: 14.h,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'UI/UX Design',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 160.h,
                            width: 314.w,
                            child: GestureDetector(
                              onTap: () => _editAboutDetail(context),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'About Me',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    about1,
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                  Text(
                                    about2,
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                  Divider(
                                    color: Colors.white,
                                    thickness: 1.0,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 160.h,
                                width: 152.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Follow me',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: ()=> _editSocialMedia(context),
                                      child: Text(
                                        socialMedia,
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 32.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          color: Color(0xFF242424),
                                          border: Border.all(
                                            color: Colors.white,
                                          )),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            AppImages.facebook,
                                            height: 14.h,
                                            width: 14.h,
                                          ),
                                          Text(
                                            'Facebook',
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 32.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          color: Color(0xFF242424),
                                          border: Border.all(
                                            color: Colors.white,
                                          )),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            AppImages.twitter,
                                            height: 14.h,
                                            width: 14.h,
                                          ),
                                          Text(
                                            'Twitter',
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 32.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          color: Color(0xFF242424),
                                          border: Border.all(
                                            color: Colors.white,
                                          )),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            AppImages.instagram,
                                            height: 14.h,
                                            width: 14.h,
                                          ),
                                          Text(
                                            'Instagram',
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 32.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          color: Color(0xFF242424),
                                          border: Border.all(
                                            color: Colors.white,
                                          )),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            AppImages.linkedin,
                                            height: 14.h,
                                            width: 14.h,
                                          ),
                                          Text(
                                            'LinkedIn',
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 160.h,
                                width: 150.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Past experience',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: experiences.map((experience) {
                                        return SizedBox(
                                          //height: 80.h,
                                          width: 267.w,
                                          child: GestureDetector(
                                             onTap: () =>
                                                 _editExperienceItem(context, experience),
                                             child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                              SizedBox(
                                              //height: 45.h,
                                              width: 109.w,
                                              child: Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    experience['title']!,
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    experience['details']!,
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    experience['description']!,
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                                SizedBox(
                                                  height: 15.h,
                                                )
                                            ],
                                          ),
                                        ),
                                                                                );

                                      }).toList(),

                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 160.h,
                                width: 150.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Education',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: education.map((entry) {
                                        return Padding(
                                          padding: EdgeInsets.only(bottom: 10.h),
                                          child: GestureDetector(
                                            onTap: () => _editEducationItem(context, entry),
                                            child:  SizedBox(
                                              height: 35.h,

                                              child: Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    entry['degree']!,
                                                    style: TextStyle(
                                                      fontSize: 13.sp,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    entry['institution']!,
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Text(
                                                    entry['year']!,
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      fontFamily: 'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      color: Colors.white,
                                                    ),
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
                          SizedBox(
                            height: 10.h,
                          ),
                          Divider(
                            color: Colors.white,
                            thickness: 1.0,
                          )
                        ],
                      ),
                      SizedBox(
                        // height: 60.h,
                        width: 525.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () => _editEmail(context),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Contact',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Email',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        email,
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: 'Manrope',
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => _editPhone(context),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Phone Number',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    mobile,
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => _editPortfolio(context),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Portfolio',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    portfolio,
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontFamily: 'Manrope',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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

  void _editAboutDetail(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController about1Controller =
        TextEditingController(text: about1);
        final TextEditingController about2Controller =
        TextEditingController(text: about2);

        return AlertDialog(
          title: const Text('Edit User Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: about1Controller,
                decoration: const InputDecoration(labelText: 'About'),
              ),
              TextField(
                controller: about2Controller,
                decoration: const InputDecoration(labelText: 'Detail'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  about2 = about2Controller.text;
                  about1 = about1Controller.text;
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

  void _editEmail(BuildContext context,) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController about1Controller =
        TextEditingController(text: email);


        return AlertDialog(
          title:  Text('Edit Email'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: about1Controller,
                decoration: InputDecoration(labelText: 'Email'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  email = about1Controller.text;
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

  void _editPhone(BuildContext context,) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController about1Controller =
        TextEditingController(text: mobile);


        return AlertDialog(
          title:  Text('Edit Phone'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: about1Controller,
                decoration: InputDecoration(labelText: 'Phone Number'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  mobile = about1Controller.text;
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
  void _editPortfolio(BuildContext context,) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController about1Controller =
        TextEditingController(text: portfolio);


        return AlertDialog(
          title:  Text('Edit Portfolio'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: about1Controller,
                decoration: InputDecoration(labelText: 'Portfolio'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  portfolio = about1Controller.text;
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
