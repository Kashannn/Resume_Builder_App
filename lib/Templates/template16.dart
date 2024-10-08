import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:image_picker/image_picker.dart';

import '../utils/constant/app_images_constant.dart';

class Template16 extends StatefulWidget {
  const Template16({super.key});

  @override
  State<Template16> createState() => _Template16State();
}

class _Template16State extends State<Template16> {
  String userName = 'Sam';
  String userName1 = 'Moore';
  Color userNameColor = Colors.black;
  Color userName1Color = Colors.purple;
  Color userRoleColor = Colors.black;
  String userRole = 'Product Designer';
  String socialMedia = '@john_designer';
  String email = 'contact@john_designer.com';
  String mobile = '+001 123 456 789';
  String about =
      "Lorem ipsum dolor sit amet consectetur adipiscing elit neque tempor malesuada adipiscing congue diam quis orci amet porttitor blandit amet nullam sit elit, .";

  List<String> skills = [
    "UI/UX Design",
    "Web Design",
    "User Research",
    "Motion Graphics",
    "Product Design",
    "Brand Design",
    "Graphic Design",
    "Interaction Design",
  ];

  List<Map<String, String>> experiences = [
    {
      'title': 'JOB POSITION ',
      'details': 'Company Name  2010 - 2014',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
    },
    {
      'title': 'JOB POSITION ',
      'details': 'Company Name  2010 - 2014',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
    },
  ];

  List<Map<String, String>> education = [
    {
      'year': '2017 - 2020',
      'degree': 'Masters Degree',
      'institution': ' Institute',
    },
    {
      'year': '2012-2015',
      'degree': 'Bachelor Degree',
      'institution': 'Institute',
    },
    {
      'year': '2012-2015',
      'degree': 'Bachelor Degree',
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
    ScreenUtil.init(context, designSize: const Size(650, 1450));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 650.w,
          //height: 842.h,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: 650.w,
                //height: 110.h,
                // color: Colors.red,
                child: SvgPicture.asset(
                  AppImages.toptemplate16,
                  width: 650.w,
                  height: 110.h,
                  fit: BoxFit.fill,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300.w,
                    padding: EdgeInsets.only(
                      left: 20.w,
                    ),
                    //height: 685.h,
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: _pickImage,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: _profileImage != null
                                ? FileImage(_profileImage!)
                                : AssetImage(AppImages.profilePicture16)
                                    as ImageProvider,
                            radius: 105.h,
                          ),
                        ),
                        SizedBox(
                          width: 166.w,

                          // height: 68.h,
                          child: GestureDetector(
                            onTap: () => _editUserDetails(context),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      userName,
                                      style: TextStyle(
                                        fontFamily: GoogleFonts.poppins().fontFamily, // First name font
                                        fontWeight: FontWeight.w700,
                                        fontSize: 26.sp,
                                        color: userNameColor, // Dynamic first name color
                                      ),
                                    ),
                                    SizedBox(width: 4.w), // Adjust spacing between first and last name
                                    Text(
                                      userName1,
                                      style: TextStyle(
                                        fontFamily: GoogleFonts.poppins().fontFamily, // Last name font
                                        fontWeight: FontWeight.w700,
                                        fontSize: 26.sp,
                                        color: userName1Color, // Dynamic last name color
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4.h), // Space between name and role
                                Text(
                                  userRole,
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.poppins().fontFamily, // Role font
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: userRoleColor, // Dynamic role color
                                  ),
                                ),
                              ],
                            ),
                          )
                        ),
                        10.verticalSpace,
                        GestureDetector(
                          onTap: () => _editContactDetails(context),
                          child: SizedBox(

                            //height: 140.h,
                            child: Padding(
                              padding: EdgeInsets.all(
                                  8.w), // Adjust padding as needed
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  // Email Row
                                  Row(
                                    children: [
                                      Icon(Icons.email,
                                          size: 20.w, color: Colors.black),
                                      SizedBox(width: 8.w),
                                      Text(
                                        email,
                                        style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.poppins().fontFamily, // Ensure GoogleFonts.poppins().fontFamily is set as the font family
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                    ],
                                  ),
                                  10.verticalSpace,
                                  // Phone Row
                                  Row(
                                    children: [
                                      Icon(Icons.phone,
                                          size: 20.w, color: Colors.black),
                                      SizedBox(width: 8.w),
                                      Text(
                                        mobile,
                                        style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.poppins().fontFamily, // Ensure GoogleFonts.poppins().fontFamily is set as the font family
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: 16
                                          .h), // Space between phone and follow me section
                                  // Follow Me Text
                                  Text(
                                    "Follow me",
                                    style: TextStyle(
                                      fontFamily: GoogleFonts.poppins().fontFamily,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: Colors.purple,
                                    ),
                                  ),
                                  8.verticalSpace,
                                  Text(
                                    socialMedia,
                                    style: TextStyle(
                                      fontFamily: GoogleFonts.poppins().fontFamily,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          8.h), // Space between text and icons
                                  // Social Media Icons
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.facebook,
                                          size: 20.w, color: Colors.black),
                                      8.horizontalSpace,
                                      SvgPicture.asset(AppImages.twitter,
                                          width: 10.w,
                                          height: 10.h,
                                          color: Colors.black),
                                      8.horizontalSpace,
                                      SvgPicture.asset(AppImages.facebook,
                                          width: 10.w,
                                          height: 10.h,
                                          color: Colors.black),
                                      8.horizontalSpace,
                                      SvgPicture.asset(AppImages.whatsapp12,
                                          width: 10.w,
                                          height: 10.h,
                                          color: Colors.black),
                                      8.horizontalSpace,

                                      Icon(Icons.youtube_searched_for,
                                          size: 20.w,
                                          color: Colors
                                              .black), // Example for
                                      8.horizontalSpace,// YouTube
                                      Icon(Icons.sports_basketball,
                                          size: 20.w,
                                          color: Colors
                                              .black), // Ex
                                      8.horizontalSpace,// ample for Dribbble
                                      Icon(Icons.beach_access,
                                          size: 20.w,
                                          color: Colors
                                              .black), // Ex
                                      8.horizontalSpace,// ample for Behance
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        10.verticalSpace,
                        SizedBox(

                          //height: 188.h,
                          child: Padding(
                            padding:
                                EdgeInsets.all(5.w), // Adjust padding as needed
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "About me",
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                    color: Colors.purple,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                GestureDetector(
                                  onTap: () => _editAbout(context),
                                  child: Text(
                                    about,
                                    style: TextStyle(
                                      fontFamily: GoogleFonts.poppins().fontFamily,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13.sp,
                                      color: Colors.grey[700],
                                      height:
                                          1.5, // Adjust line height for better readability
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        10.verticalSpace,
                        SizedBox(
                          //width: 0.w,
                          //height: 155.h,
                          child: Padding(
                            padding: EdgeInsets.all(1.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Skills",
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                    color: Colors.purple,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        for (int i = 0;
                                            i < skills.length;
                                            i += 2)
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 8.h),
                                            child: GestureDetector(
                                                onTap: () => _editskills(
                                                    context, i, skills[i]),
                                                child:
                                                    _buildSkillItem(skills[i])),
                                          ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        for (int i = 1;
                                            i < skills.length;
                                            i += 2)
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 8.h),
                                            child: GestureDetector(
                                                onTap: () => _editskills(
                                                    context, i, skills[i]),
                                                child:
                                                    _buildSkillItem(skills[i])),
                                          ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 300.w,
                    height: 700.h,
                    child: Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 5.w,
                            height: 685.h,
                            color: Color(0xFFBFBFBF),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Past experience",
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 16.h),
                                Expanded(
                                  child: SingleChildScrollView(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      for (var experience in experiences)
                                        GestureDetector(
                                          onTap: () => _editExperienceItem(
                                            context,
                                            experience,
                                          ),
                                          child: Column(children: [
                                            _buildExperienceItem(
                                              iconPath:
                                                  '', // Use a default icon or set dynamically
                                              companyName: experience['title']!,
                                              jobTitle: experience['details']!,
                                              description:
                                                  experience['description']!,
                                              duration: '',
                                            ),
                                            SizedBox(height: 16.h),
                                          ]),
                                        ),
                                    ],
                                  )),
                                ),
                                Text(
                                  "Education",
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 16.h),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    for (var edu in education)
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 16.h),
                                        child: GestureDetector(
                                          onTap: () =>
                                              _editEducationItem(context, edu),
                                          child: _buildEducationItem(
                                            duration: edu['year']!,
                                            degree: edu['degree']!,
                                            institution: edu['institution']!,
                                          ),
                                        ),
                                      ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillItem(String skill) {
    return Row(
      children: [
        Icon(Icons.circle, size: 8.w, color: Colors.grey[700]),
        SizedBox(width: 8.w),
        Text(
          skill,
          style: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontWeight: FontWeight.w400,
            fontSize: 13.sp,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }

  Widget _buildExperienceItem({
    required String iconPath,
    required String companyName,
    required String duration,
    required String jobTitle,
    required String description,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    companyName,
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    "—",
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    duration,
                    style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Text(
                jobTitle,
                style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontWeight: FontWeight.w700,
                  fontSize: 18.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                description,
                style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Colors.grey[700],
                  height: 1.5, // Adjust line height for readability
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildEducationItem({
    required String duration,
    required String degree,
    required String institution,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          duration,
          style: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: Colors.grey[700],
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          degree,
          style: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          institution,
          style: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }

  void _editUserDetails(BuildContext context) {
    TextEditingController nameController = TextEditingController(text: userName);
    TextEditingController name1Controller = TextEditingController(text: userName1);
    TextEditingController roleController = TextEditingController(text: userRole);

    Color tempUserNameColor = userNameColor;
    Color tempUserName1Color = userName1Color;
    Color tempUserRoleColor = userRoleColor;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setStateDialog) {
            return AlertDialog(
              title: const Text('Edit User Details'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(labelText: 'First Name'),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: name1Controller,
                      decoration: const InputDecoration(labelText: 'Last Name'),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: roleController,
                      decoration: const InputDecoration(labelText: 'Role'),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'First Name Color',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var color in [
                          Colors.black,
                          Colors.red,
                          Colors.green,
                          Colors.yellow,
                          Colors.teal,
                          Colors.blue,
                          Colors.purple,
                        ])
                          GestureDetector(
                            onTap: () {
                              setStateDialog(() {
                                tempUserNameColor = color; // Update first name color
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: color,
                              radius: 15,
                              child: tempUserNameColor == color
                                  ? Icon(Icons.check, color: Colors.white, size: 16)
                                  : SizedBox.shrink(),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Last Name Color',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var color in [
                          Colors.black,
                          Colors.red,
                          Colors.green,
                          Colors.yellow,
                          Colors.teal,
                          Colors.blue,
                          Colors.purple,
                        ])
                          GestureDetector(
                            onTap: () {
                              setStateDialog(() {
                                tempUserName1Color = color; // Update last name color
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: color,
                              radius: 15,
                              child: tempUserName1Color == color
                                  ? Icon(Icons.check, color: Colors.white, size: 16)
                                  : SizedBox.shrink(),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Role Color',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var color in [
                          Colors.black,
                          Colors.red,
                          Colors.green,
                          Colors.yellow,
                          Colors.teal,
                          Colors.blue,
                          Colors.purple,
                        ])
                          GestureDetector(
                            onTap: () {
                              setStateDialog(() {
                                tempUserRoleColor = color; // Update role color
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: color,
                              radius: 15,
                              child: tempUserRoleColor == color
                                  ? Icon(Icons.check, color: Colors.white, size: 16)
                                  : SizedBox.shrink(),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close dialog without saving
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      userName = nameController.text;
                      userName1 = name1Controller.text;
                      userRole = roleController.text;
                      userNameColor = tempUserNameColor; // Save selected first name color
                      userName1Color = tempUserName1Color; // Save selected last name color
                      userRoleColor = tempUserRoleColor; // Save selected role color
                    });
                    Navigator.of(context).pop(); // Close dialog
                  },
                  child: const Text('Save'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _editContactDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController phoneController =
            TextEditingController(text: mobile);
        final TextEditingController emailController =
            TextEditingController(text: email);

        final TextEditingController socialController =
            TextEditingController(text: socialMedia);

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
              TextField(
                controller: socialController,
                decoration: const InputDecoration(labelText: 'Social Media'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  mobile = phoneController.text;
                  email = emailController.text;
                  socialMedia = socialController.text;
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

  Future<void> _editskills(
      BuildContext context, int index, String currentName) async {
    TextEditingController nameController =
        TextEditingController(text: currentName);
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Skill'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Skill Name'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                String newName = nameController.text;

                setState(() {
                  skills[index] = newName;
                });

                Navigator.of(context).pop();
              },
              child: Text('Save'),
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
}
