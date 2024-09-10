import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/constant/app_images_constant.dart';

class Template3 extends StatefulWidget {
  const Template3({super.key});

  @override
  State<Template3> createState() => _Template3State();
}

class _Template3State extends State<Template3> {
  String userName = "John Moore";
  String role = "Digital Designer";
  Color userRoleColor = Color(0xFF00C781);
  Color userNameColor = Color(0xFF00C781);

  String socialMedia = '@johnmoore';
  String email = 'contact@john.com';
  String mobile = '+001 123 456 789';
  String website = 'www.johnmoore.com';

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
  ];

  //expertise
  List<Map<String, String>> expertiseData = [
    {
      'name': 'Branding',
    },
    {
      'name': 'Web Design',
    },
    {
      'name': 'UI/UX Design',
    },
    {
      'name': 'Web Development',
    },
  ];

  //skills
  List<Map<String, String>> skillsData = [
    {
      'name': 'Lead & Strategy',
    },
    {
      'name': 'Innovative',
    },
    {
      'name': 'Team Work',
    },
    {
      'name': 'Goal Oriented',
    },
  ];

  String about =
      "Lorem ipsum dolor sit amet consectetur adipiscing elit scelerisque sit senectus maecenas donec amet viverra Aliquam aenean eget gravida vitae nunc vitae sit.";

  List<Map<String, String>> experiences = [
    {
      'title': 'JOB POSITION / TITLE HERE',
      'details': 'Company Name  - 2010 - 2014',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh ',
    },
    {
      'title': 'JOB POSITION / TITLE HERE',
      'details': 'Company Name  - 2010 - 2014',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh',
    },
    {
      'title': 'JOB POSITION / TITLE HERE',
      'details': 'Company Name  - 2010 - 2014',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh',
    },
    {
      'title': 'JOB POSITION / TITLE HERE',
      'details': 'Company Name  - 2010 - 2014',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh ',
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
        body: Container(
          width: 595.w,
          color: Colors.black,
          child: Column(
            children: [
              Container(
                width: 595.w,
                height: 90.h,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    10.w.horizontalSpace,
                    SizedBox(
                      width: 87.w,
                      height: 87.h,
                      child: GestureDetector(
                        onTap: _pickImage,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: _profileImage != null
                              ? FileImage(_profileImage!)
                              : AssetImage(
                                  AppImages.t3,
                                ) as ImageProvider,
                          //radius: 45.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 209.w,
                      height: 78.h,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 8.h),
                        child: GestureDetector(
                          onTap: () => _editUserDetails(context),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "I'm ",
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 24.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "$userName,\n",
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24.sp,
                                        color:
                                            userNameColor, // Dynamically change name color
                                      ),
                                    ),
                                    TextSpan(
                                      text: "a $role.",
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 23.sp,
                                        color:
                                            userRoleColor, // Dynamically change role color
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 178.w,
                      height: 47.h,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 8.h),
                        child: GestureDetector(
                          onTap: () => _editSocialMedia(context),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Username Text
                              Text(
                                socialMedia,
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  _buildSocialIcon(AppImages.facebook7),
                                  _buildSocialIcon(AppImages.dribble7),
                                  _buildSocialIcon(AppImages.behance7),
                                  _buildSocialIcon(AppImages.instagram7),
                                  _buildSocialIcon(AppImages.LinkedIn7),
                                  _buildSocialIcon(AppImages.twitter7),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 237.w,
                    //height: 614.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 190.w,
                          //height: 113.h,
                          // color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 8.h),
                            child: GestureDetector(
                              onTap: () => _editContactDetails(context),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Contact",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  Row(
                                    children: [
                                      Icon(Icons.email,
                                          color: Color(0xFF00C781), size: 16.w),
                                      SizedBox(width: 8.w),
                                      Text(
                                        email,
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8.h),
                                  Row(
                                    children: [
                                      Icon(Icons.phone,
                                          color: Color(0xFF00C781), size: 16.w),
                                      SizedBox(width: 8.w),
                                      Text(
                                        mobile,
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8.h),
                                  Row(
                                    children: [
                                      Icon(Icons.language,
                                          color: Color(0xFF00C781), size: 16.w),
                                      SizedBox(width: 8.w),
                                      Text(
                                        website,
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
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 190.w,
                          //height: 130.h,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 8.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Education",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  // Loop through the education list and display each item
                                  ...education.map((edu) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 8
                                              .h), // Adjust the spacing between items
                                      child: GestureDetector(
                                        onTap: () =>
                                            _editEducationItem(context, edu),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              edu['degree']!,
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              edu['institution']!,
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(height: 4.h),
                                            Text(
                                              edu['year']!,
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14.sp,
                                                color: Color(0xFF00C781),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ],
                              )),
                        ),

// Main widget for expertise section
                        SizedBox(
                          width: 190.w,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Expertise",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                // Loop through the expertiseData list and build each item
                                ...expertiseData.map((expertise) {
                                  int index = expertiseData.indexOf(expertise);
                                  return GestureDetector(
                                    onTap: () => _editExpertiseDialog(context),
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 4.h),
                                      child: _buildExpertiseItem(expertise['name']!),
                                    ),
                                  );
                                }).toList(),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 190.w,
                          //height: 113.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Skills",
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 8.h),
                                ...skillsData.map((skill) {
                                  int index = skillsData.indexOf(skill);
                                  return GestureDetector(
                                    onTap: () => _editSkillDialog(
                                        context),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 4
                                              .h), // Adjust the spacing between items
                                      child: _buildSkillItem(skill['name']!),
                                    ),
                                  );
                                }).toList(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      bottomLeft: Radius.circular(20.r),
                    ),
                    child: Container(
                      //width: MediaQuery.of(context).size.width ,
                      //height: 614.h,
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1D1D),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          bottomLeft: Radius.circular(20.r),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            //width: 5.w,
                            //height: 590.h,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 300.w,
                                //height: 100.h,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.w, vertical: 8.h),
                                  child: GestureDetector(
                                    onTap: () => _editAbout(context),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "About Me",
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        Text(
                                          about,
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.sp,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                        SizedBox(height: 8.h),
                                        Divider(
                                          color: Colors
                                              .grey, // Adjust the color to match your design
                                          thickness: 1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 290.w,
                                //height: 433.h,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12.w, vertical: 12.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Work Experience",
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 5.h),
                                        // Loop through the experiences list and build each experience item
                                        ...experiences.map((experience) {
                                          return GestureDetector(
                                            onTap: () => _editExperienceItem(
                                                context, experience),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  bottom: 16
                                                      .h), // Add spacing between items
                                              child: _buildExperienceItem(
                                                companyName: experience[
                                                    'details']!, // Extract company name
                                                jobTitle: experience['title']!,
                                                duration:
                                                    '', // Extract duration
                                                description:
                                                    experience['description']!,
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ],
                                    )),
                              ),
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
        ),
      ),
    );
  }

  Widget _buildSocialIcon(String assetPath) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: CircleAvatar(
          radius: 10.r,
          backgroundColor: Colors.blue,
          child: SvgPicture.asset(
            assetPath,
            fit: BoxFit.contain,
          )),
    );
  }

  Widget _buildExpertiseItem(String text) {
    return Row(
      children: [
        Icon(Icons.circle, size: 6.w, color: Color(0xFF00C781)),
        SizedBox(width: 8.w),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildSkillItem(String text) {
    return Row(
      children: [
        Icon(Icons.circle, size: 6.w, color: Color(0xFF00C781)),
        SizedBox(width: 8.w),
        Text(
          text,
          style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildExperienceItem({
    required String companyName,
    required String jobTitle,
    required String duration,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          companyName,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: Color(0xFF00C781), // Green color for company name
          ),
        ),
        SizedBox(height: 4.h),
        Row(
          children: [
            Text(
              jobTitle,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              "$duration",
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Colors.white,
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
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  void _editUserDetails(BuildContext context) {
    // Temporary variables to hold updated values
    TextEditingController nameController =
        TextEditingController(text: userName);
    TextEditingController roleController = TextEditingController(text: role);
    Color tempNameColor = userNameColor;
    Color tempRoleColor = userRoleColor;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setStateDialog) {
            // Use setStateDialog for the dialog-specific updates
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              titlePadding: EdgeInsets.only(top: 10, right: 20),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox.shrink(), // Empty space to align delete icon
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red, size: 30),
                    onPressed: () {
                      // Handle delete action here
                    },
                  ),
                ],
              ),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Name',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Role',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: roleController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Name Color',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var color in [
                          Colors.cyan,
                          Colors.black,
                          Colors.green,
                          Colors.red,
                          Colors.yellow,
                          Colors.teal,
                          Colors.blue,
                          Colors.purple,
                        ])
                          GestureDetector(
                            onTap: () {
                              setStateDialog(() {
                                // Update dialog-specific state
                                tempNameColor =
                                    color; // Update temporary name color dynamically
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: color,
                              radius: 15,
                              child: tempNameColor == color
                                  ? Icon(Icons.check,
                                      color: Colors.white, size: 16)
                                  : SizedBox.shrink(),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Role Color',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var color in [
                          Colors.cyan,
                          Colors.black,
                          Colors.green,
                          Colors.red,
                          Colors.yellow,
                          Colors.teal,
                          Colors.blue,
                          Colors.purple,
                        ])
                          GestureDetector(
                            onTap: () {
                              setStateDialog(() {
                                // Update dialog-specific state
                                tempRoleColor =
                                    color; // Update temporary role color dynamically
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: color,
                              radius: 15,
                              child: tempRoleColor == color
                                  ? Icon(Icons.check,
                                      color: Colors.white, size: 16)
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
                    Navigator.of(context).pop();
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey.shade300),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child:
                        Text('Discard', style: TextStyle(color: Colors.black)),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Now, we update the parent widget when "Save" is pressed
                    setState(() {
                      userName = nameController.text;
                      role = roleController.text;
                      userNameColor = tempNameColor;
                      userRoleColor = tempRoleColor;
                    });
                    Navigator.of(context).pop(); // Close dialog
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text('Save', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            );
          },
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

  void _editContactDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController phoneController =
            TextEditingController(text: mobile);
        final TextEditingController emailController =
            TextEditingController(text: email);
        final TextEditingController webisteController =
            TextEditingController(text: website);

        return AlertDialog(
          title: const Text('Edit Contact Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(labelText: 'Phone'),
              ),
              TextField(
                controller: webisteController,
                decoration: const InputDecoration(labelText: 'Website'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  mobile = phoneController.text;
                  email = emailController.text;
                  website = webisteController.text;
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

  Future<void> _editExpertiseDialog(BuildContext context) async {
    TextEditingController newExpertiseController = TextEditingController();

    await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setStateDialog) { // Using setStateDialog to update inside the dialog
            return SingleChildScrollView(
              child: AlertDialog(
                title: Text('Edit Expertise'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Show all existing expertise items
                    Column(
                      children: [
                        ...expertiseData.asMap().entries.map((entry) {
                          int index = entry.key;
                          String expertiseName = entry.value['name']!;
              
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: TextEditingController(text: expertiseName),
                                  decoration: InputDecoration(
                                    labelText: 'Expertise Name',
                                  ),
                                  onChanged: (value) {
                                    setStateDialog(() {
                                      expertiseData[index] = {'name': value};
                                    });
                                  },
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.remove_circle),
                                onPressed: () {
                                  setStateDialog(() {
                                    expertiseData.removeAt(index); // Remove item and update dialog state
                                  });
                                },
                              ),
                            ],
                          );
                        }).toList(),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    // Text field to add new expertise

                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            setStateDialog(() {
                              expertiseData.add({'name': '', });
                            });
                          },
                          icon: Icon(Icons.add),
                          label: Text('Add'),
                        ),
                      ],
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
                      setState(() {
                        // Update the state in the parent widget if necessary
                        // This will save the data when the user clicks save
                      });
                      Navigator.of(context).pop();
                    },
                    child: Text('Save'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }


  Future<void> _editSkillDialog(BuildContext context) async {
    TextEditingController newSkillController = TextEditingController();

    await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setStateDialog) {
            return SingleChildScrollView(
              child: AlertDialog(
                title: Text('Edit Skills'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Display all skills with the ability to remove
                    Column(
                      children: [
                        ...skillsData.asMap().entries.map((entry) {
                          int index = entry.key;
                          String skillName = entry.value['name']!;
              
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: TextEditingController(text: skillName),
                                  decoration: InputDecoration(
                                    labelText: 'Skill Name',
                                  ),
                                  onChanged: (value) {
                                    setStateDialog(() {
                                      skillsData[index] = {'name': value};
                                    });
                                  },
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.remove_circle),
                                onPressed: () {
                                  setStateDialog(() {
                                    skillsData.removeAt(index); // Remove skill
                                  });
                                },
                              ),
                            ],
                          );
                        }).toList(),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    // Input for adding new skill

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            setStateDialog(() {
                              skillsData.add({'name': ''});
                            });
                          },
                          icon: Icon(Icons.add),
                          label: Text('Add'),
                        ),
                      ],
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Cancel and close the dialog
                    },
                    child: Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        // Ensure parent widget reflects changes
                      });
                      Navigator.of(context).pop(); // Save and close the dialog
                    },
                    child: Text('Save'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }



  void _editAbout(BuildContext context) {
    final TextEditingController aboutController = TextEditingController(text: about);
    int charCount = aboutController.text.length;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Text('Edit About'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: aboutController,
                    maxLines: 7, // Allow multiline input
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(200), // Limit to 200 characters
                    ],
                    decoration: InputDecoration(
                      labelText: 'About',
                      hintText: 'Tell us about yourself (200 characters max)',
                      border: const OutlineInputBorder(),
                      counterText: '', // Hide the default character counter
                    ),
                    onChanged: (text) {
                      setState(() {
                        charCount = text.length;
                      });
                    },
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '$charCount/200', // Display the current character count
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    // Update the parent state with the new about text
                    Navigator.of(context).pop(aboutController.text);
                  },
                  child: const Text('Save'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog without saving
                  },
                  child: const Text('Cancel'),
                ),
              ],
            );
          },
        );
      },
    ).then((newAbout) {
      if (newAbout != null) {
        // This ensures the parent state is updated
        setState(() {
          about = newAbout;
        });
      }
    });
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

        return StatefulBuilder(
          builder: (context, setStateDialog) {
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
                  TextFormField(
                    maxLines: 5,
                    controller: descriptionController,
                    decoration: const InputDecoration(labelText: 'Description'),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(100),
                    ],
                    onChanged: (text) {
                      // Update character count dynamically
                      setStateDialog(() {});
                    },
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '${descriptionController.text.length}/100', // Display character count
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
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
      },
    );
  }

}
