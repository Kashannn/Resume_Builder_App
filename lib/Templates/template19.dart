import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:image_picker/image_picker.dart';

import '../utils/constant/app_images_constant.dart';

class Template19 extends StatefulWidget {
  const Template19({super.key});

  @override
  State<Template19> createState() => _Template19State();
}

class _Template19State extends State<Template19> {
  Color userNameColor = Colors.white;
  Color userRoleColor = Color(0xFFE3E3E3);
  String userName = 'John Deo';
  String userRole = 'UI DESIGNER';
  String mobile1 = '+001 123 456 789';
  String mobile2 = '+001 123 456 789';
  String email = 'contact@john.com';
  String address = '123 Main St, Anytown USA';
  String portfolio = 'www.johnmoore.com';

  String about =
      "A student majoring in Advertising and UI / UX design. In this CV is my design and marketing experience. Things I achieve through projects and works. Therefore, I want a job starting UI/UX as a career to stabilize and enhance my competence.";

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
      'details': 'Company Name',
      'fromto': '2010 - 2014',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
    },
    {
      'title': 'JOB POSITION / TITLE HERE',
      'details': 'Company Name',
      'fromto': '2010 - 2014',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
    },
  ];

  List<String> skills = [
    'Photoshop',
    'Illustrator',
    'Figma',
    'UI/UX',
  ];

  List<String> hobbies = [
    'Reading',
    'Playing Chess',
    'Swimming',
    'Travelling',
    'Hiking',
    'Watching Movies',
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
          //height: 842.h,
          width: 595.w,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF5BBBFF),
                Color(0xFF005592),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //height: 60.h,
                  //width: 204.w,
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => _editUserDetails(context),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: TextStyle(
                                fontFamily: GoogleFonts.inter().fontFamily,
                                color:
                                    userNameColor, // Apply dynamic name color
                                fontSize: 35.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              userRole,
                              style: TextStyle(
                                fontFamily: GoogleFonts.inter().fontFamily,
                                color:
                                    userRoleColor, // Apply dynamic role color
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: _pickImage,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: _profileImage != null
                              ? FileImage(_profileImage!)
                              : AssetImage(AppImages.profilePicture19)
                                  as ImageProvider,
                          radius: 50.r,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => _editContactDetails(context),
                  child: Row(
                    children: [
                      Container(
                        // /height: 40.h,
                        //width: 400.w,
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                  size: 20.h,
                                ),
                                SizedBox(width: 2.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      mobile1,
                                      style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.inter().fontFamily,
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                    SizedBox(height: 4.h),
                                    Text(
                                      mobile2,
                                      style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.inter().fontFamily,
                                        color: Colors.white,
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: 10.w),
                            Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  color: Colors.white,
                                  size: 20.h,
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  email,
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10.w),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 20.h,
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  address,
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    color: Colors.white,
                                    fontSize: 10.sp,
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
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      //height: 138.h,
                      width: 360.w,
                      padding: EdgeInsets.all(10.w),
                      child: GestureDetector(
                        onTap: () => _editAbout(context),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Header with Icon
                            Row(
                              children: [
                                Icon(Icons.person,
                                    color: Colors.white, size: 12.sp),
                                SizedBox(width: 8.w),
                                Text(
                                  'About Me',
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontSize: 11.81.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            // Main Content
                            Text(
                              about,
                              style: TextStyle(
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontSize: 9.81.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                height: 13.74 / 9.81,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            // Secondary Content
                          ],
                        ),
                      ),
                    ),
                    Container(
                        //height: 120.h,
                        width: 150.w,
                        padding: EdgeInsets.all(8.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Header with Icon
                            Row(
                              children: [
                                Icon(Icons.school,
                                    color: Colors.white, size: 12.sp),
                                SizedBox(width: 4.w),
                                Text(
                                  'Education',
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontSize: 11.81.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4.h),

                            // Loop through the education list and build each item
                            ...education.map((edu) {
                              return GestureDetector(
                                onTap: () => _editEducationItem(context, edu),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 4.h), // Add spacing between items
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        edu['institution']!,
                                        style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.inter().fontFamily,
                                          fontSize: 7.85.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          height: 13.74 / 7.85,
                                        ),
                                      ),
                                      Text(
                                        edu['degree']!,
                                        style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.inter().fontFamily,
                                          fontSize: 7.85.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          height: 13.74 / 7.85,
                                        ),
                                      ),
                                      Text(
                                        edu['year']!,
                                        style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.inter().fontFamily,
                                          fontSize: 7.85.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          height: 13.74 / 7.85,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ],
                        )),
                  ],
                ),
                // SizedBox(height: 20.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        //height: 172.h,
                        width: 300.w,
                        padding: EdgeInsets.all(10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Header with Icon
                            Row(
                              children: [
                                Icon(Icons.work,
                                    color: Colors.white, size: 12.sp),
                                SizedBox(width: 8.w),
                                Text(
                                  'Job Experience',
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontSize: 11.81.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),

                            // Loop through the experiences list and build each item
                            ...experiences.map((exp) {
                              return GestureDetector(
                                onTap: () => _editExperienceItem(context, exp),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 8.h), // Add spacing between items
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        exp['fromto']!,
                                        style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.inter().fontFamily,
                                          fontSize: 8.83.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          height: 13.74 / 8.83,
                                        ),
                                      ),
                                      Text(
                                        exp['title']!,
                                        style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.inter().fontFamily,
                                          fontSize: 8.83.sp,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                          height: 13.74 / 8.83,
                                        ),
                                      ),
                                      Text(
                                        exp['details']!,
                                        style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.inter().fontFamily,
                                          fontSize: 8.83.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          height: 13.74 / 8.83,
                                        ),
                                      ),
                                      Text(
                                        exp['description']!,
                                        style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.inter().fontFamily,
                                          fontSize: 8.83.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          height: 13.74 / 8.83,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ],
                        )),
                    Container(
                      //height: 47.h,
                      width: 150.w,
                      padding: EdgeInsets.all(5.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header with Icon
                          Row(
                            children: [
                              Icon(Icons.insert_link,
                                  color: Colors.white, size: 12.sp),
                              SizedBox(width: 4.w),
                              Text(
                                'Portfolio Link',
                                style: TextStyle(
                                  fontFamily: GoogleFonts.inter().fontFamily,
                                  fontSize: 11.81.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.h),
                          // Portfolio Link
                          GestureDetector(
                            onTap: () => _editPortfolio(context),
                            child: Text(
                              portfolio,
                              style: TextStyle(
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontSize: 8.83.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                height: 13.74 / 8.83,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            //height: 55.h,
                            width: 360.w,
                            padding: EdgeInsets.all(5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Header with Icon
                                Row(
                                  children: [
                                    Icon(Icons.work,
                                        color: Colors.white, size: 12.sp),
                                    SizedBox(width: 4.w),
                                    Text(
                                      'Expertise & Skills',
                                      style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.inter().fontFamily,
                                        fontSize: 11.81.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),

                                // Dynamically generate the skill circles
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: skills.asMap().entries.map((entry) {
                                    int index = entry.key;
                                    String skill = entry.value;
                                    return GestureDetector(
                                      onTap: () => _editSkillDialog(
                                          context, index, skill),
                                      child: buildSkillCircle(skill, 0.75),
                                    );
                                  }).toList(),
                                ),
                              ],
                            )),
                      ],
                    ),
                    Container(
                      //height: 107.h,
                      width: 150.w,
                      padding: EdgeInsets.all(5.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.sports_handball,
                                  color: Colors.white, size: 12.sp),
                              SizedBox(width: 4.w),
                              Text(
                                'Hobbies',
                                style: TextStyle(
                                  fontFamily: GoogleFonts.inter().fontFamily,
                                  fontSize: 11.81.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Column(
                            children: [
                              // Create rows with two hobbies per row
                              for (int i = 0; i < hobbies.length; i += 2)
                                Padding(
                                  padding: EdgeInsets.only(bottom: 4.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                          onTap: () => _editHobbies(
                                              context, i, hobbies[i]),
                                          child: buildHobbyItem(hobbies[i])),
                                      // Check if there's a second hobby in the current pair
                                      if (i + 1 < hobbies.length)
                                        buildHobbyItem(hobbies[i + 1]),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _editUserDetails(BuildContext context) {
    TextEditingController nameController =
        TextEditingController(text: userName);
    TextEditingController roleController =
        TextEditingController(text: userRole);

    Color tempUserNameColor = userNameColor;
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
                      decoration: const InputDecoration(labelText: 'Name'),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Name Color',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var color in [
                          Colors.white,
                          Colors.black,
                          Colors.red,
                          Colors.green,
                          Colors.yellow,
                          Colors.teal,
                          Colors.purple,
                        ])
                          GestureDetector(
                            onTap: () {
                              setStateDialog(() {
                                tempUserNameColor = color; // Update name color
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: color,
                              radius: 15,
                              child: tempUserNameColor == color
                                  ? Icon(Icons.check,
                                      color: Colors.white, size: 16)
                                  : SizedBox.shrink(),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: roleController,
                      decoration: const InputDecoration(labelText: 'Role'),
                    ),
                    SizedBox(height: 10),
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
                          Color(0xFFE3E3E3),
                          Colors.black,
                          Colors.red,
                          Colors.green,
                          Colors.yellow,
                          Colors.teal,
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
                    Navigator.of(context).pop(); // Close dialog without saving
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      userName = nameController.text;
                      userRole = roleController.text;
                      userNameColor =
                          tempUserNameColor; // Save selected name color
                      userRoleColor =
                          tempUserRoleColor; // Save selected role color
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
            TextEditingController(text: mobile1);
        final TextEditingController phone2Controller =
            TextEditingController(text: mobile2);
        final TextEditingController addressController =
            TextEditingController(text: address);
        final TextEditingController emailController =
            TextEditingController(text: email);

        return AlertDialog(
          title: const Text('Edit Contact Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(labelText: 'Phone 1'),
              ),
              TextField(
                controller: phone2Controller,
                decoration: const InputDecoration(labelText: 'Phone 2'),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: addressController,
                decoration: const InputDecoration(labelText: 'Address'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  mobile1 = phoneController.text;
                  mobile2 = phone2Controller.text;
                  address = addressController.text;
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

  void _editExperienceItem(BuildContext context, Map<String, String> item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController titleController =
            TextEditingController(text: item['title']);
        final TextEditingController detailsController =
            TextEditingController(text: item['details']);
        final TextEditingController fromtoController =
            TextEditingController(text: item['fromto']);

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
                controller: fromtoController,
                decoration: const InputDecoration(labelText: 'From - To'),
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
                  item['fromto'] = fromtoController.text;
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

  void _editPortfolio(
    BuildContext context,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController about1Controller =
            TextEditingController(text: portfolio);

        return AlertDialog(
          title: Text('Edit Portfolio'),
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

  Future<void> _editSkillDialog(
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

  Future<void> _editHobbies(
      BuildContext context, int index, String currentName) async {
    TextEditingController nameController =
        TextEditingController(text: currentName);
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Hobbies'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Hobbies Name'),
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
                  hobbies[index] = newName;
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
}

Widget buildSkillCircle(String skillName, double skillPercentage) {
  return Column(
    children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 50.w,
            height: 50.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.1), // Background for circle
            ),
          ),
          SizedBox(
            width: 50.w,
            height: 50.w,
            child: CircularProgressIndicator(
              value: skillPercentage,
              backgroundColor: Colors.white.withOpacity(0.1),
              color: Colors.blue,
              strokeWidth: 5.w,
            ),
          ),
          Center(
            child: Text(
              skillName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: GoogleFonts.inter().fontFamily,
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget buildHobbyItem(String hobby) {
  return Text(
    hobby,
    style: TextStyle(
      fontFamily: GoogleFonts.inter().fontFamily,
      fontSize: 8.83.sp,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
}
