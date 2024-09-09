import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/constant/app_images_constant.dart';

class Template7 extends StatefulWidget {
  const Template7({super.key});

  @override
  State<Template7> createState() => _Template7State();
}

class _Template7State extends State<Template7> {
  String userName = 'Richard Sanchez';
  String userRole = 'Photographer';
  Color userNameColor = Colors.white;
  Color userRoleColor = Colors.white;
  String email = 'hello@reallygreatsite.com';
  String phoneNumber = '+123-456-7890';
  String location = '123 Anywhere St., Any City';
  String aboutMe =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.';
  List<Map<String, String>> education = [
    {
      'degree': 'Master of Media and Journalism',
      'institution': 'Wardiere University',
      'years': '2013-2016'
    },
    {
      'degree': 'Bachelor of Arts in Communication',
      'institution': 'Wardiere University',
      'years': '2009-2012'
    },
  ];
  List<String> skills = [
    'Communication',
    'Time management',
    'Organization',
    'Technical skills',
    'Creativity',
    'Research'
  ];
  List<Map<String, String>> experience = [
    {
      'company': 'Borcelle Studio',
      'position': 'Photographer',
      'years': '2021 - Present',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    },
    {
      'company': 'Creative Lens',
      'position': 'Assistant Photographer',
      'years': '2016 - 2020',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    },
  ];

  List<String> languages = [
    'English (Fluent)',
    'German (Basic)',
    'Spanish (Intermediate)',
  ];

  File? _profileImage;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(686, 1400));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 650.w,
          height: 1400.h,
          color: Color(0xFF395B6D),
          child: Column(
            children: [
              Container(
                width: 650.w,
                // height: 200.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 25.h),
                      child: Container(
                        //height: 140.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(160.r),
                              topRight: Radius.circular(160.r),
                            ),
                            border: Border.all(
                              color: Colors.white,
                            )),
                        child: GestureDetector(
                          onTap: _pickImage,
                          child: CircleAvatar(
                            radius: 80.h,
                            backgroundImage: _profileImage != null
                                ? FileImage(_profileImage!)
                                : AssetImage(AppImages.t7) as ImageProvider,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => _editUserDetails(context),
                          child: Text(
                            userName,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 38.sp,
                                color: userRoleColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          margin: EdgeInsets.only(top: 4.h),
                          width: 120.w,
                          height: 2.h,
                          color: Colors.white,
                        ),
                        SizedBox(height: 8.h),
                        GestureDetector(
                          onTap: () => _editUserDetails(context),
                          child: Text(
                            userRole,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 18.sp,
                                color: userRoleColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 325.w,
                    height: 666.5.h,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 60.h),
                          child: Container(
                            width: 170.w,
                            height: 200.h,
                            padding: EdgeInsets.symmetric(vertical: 8.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(120.r),
                                bottomLeft: Radius.circular(120.r),
                              ),
                              border: Border.all(
                                color: Color(0xFF3D586D),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.email,
                                    color: Color(0xFF3D586D), size: 20.sp),
                                SizedBox(height: 8.h),
                                GestureDetector(
                                  onTap: () => _editEmail(),
                                  child: Text(
                                    email,
                                    style: TextStyle(
                                      color: Color(0xFF3D586D),
                                      fontFamily:
                                          GoogleFonts.montserrat().fontFamily,
                                      fontSize: 12.sp,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Icon(Icons.phone,
                                    color: Color(0xFF3D586D), size: 20.sp),
                                SizedBox(height: 8.h),
                                GestureDetector(
                                  onTap: () => _editPhoneNumber(),
                                  child: Text(
                                    phoneNumber,
                                    style: TextStyle(
                                      color: Color(0xFF3D586D),
                                      fontFamily:
                                          GoogleFonts.montserrat().fontFamily,
                                      fontSize: 12.sp,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Icon(Icons.location_on,
                                    color: Color(0xFF3D586D), size: 20.sp),
                                SizedBox(height: 8.h),
                                GestureDetector(
                                  onTap: () => _editLocation(),
                                  child: Text(
                                    location,
                                    style: TextStyle(
                                      color: Color(0xFF3D586D),
                                      fontFamily:
                                          GoogleFonts.montserrat().fontFamily,
                                      fontSize: 12.sp,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 3.w,
                                height: 410.h,
                                color: Color(0xFF3D586D),
                              ),
                              Container(
                                width: 290.w,
                                // padding: EdgeInsets.all(16.w),
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 230.w,
                                      height: 50.h,
                                      alignment: Alignment.center,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 6.h),
                                      decoration: BoxDecoration(
                                        color: Color(0xFF3D586D),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(40.r),
                                          bottomRight: Radius.circular(40.r),
                                        ),
                                      ),
                                      child: Text(
                                        'EDUCATION',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: GoogleFonts.montserrat()
                                              .fontFamily,
                                          color: Colors.white,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 6.0,
                                        vertical: 8.0,
                                      ),
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: education.length,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                            onTap: () => _editEducationItem(
                                                context, education[index]),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  education[index]['degree'] ??
                                                      '',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16.sp,
                                                    fontFamily:
                                                        GoogleFonts.montserrat()
                                                            .fontFamily,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(height: 4.h),
                                                Row(
                                                  children: [
                                                    Text(
                                                      education[index]
                                                              ['institution'] ??
                                                          '',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 14.sp,
                                                        fontFamily: GoogleFonts
                                                                .montserrat()
                                                            .fontFamily,
                                                      ),
                                                    ),
                                                    SizedBox(width: 4.h),
                                                    Text(
                                                      education[index]
                                                              ['years'] ??
                                                          '',
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 14.sp,
                                                        fontFamily: GoogleFonts
                                                                .montserrat()
                                                            .fontFamily,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 16.h),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Container(
                                      width: 230.w,
                                      height: 50.h,
                                      alignment: Alignment.center,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8.h),
                                      decoration: BoxDecoration(
                                        color: Color(0xFF3D586D),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(40.r),
                                          bottomRight: Radius.circular(40.r),
                                        ),
                                      ),
                                      child: Text(
                                        'SKILLS',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: GoogleFonts.montserrat()
                                              .fontFamily,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: skills.map((skill) {
                                          int index = skills.indexOf(skill);
                                          return GestureDetector(
                                            onTap: () => _editSkillDialog(
                                                context, index, skill),
                                            child: Text(
                                              '• $skill',
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontSize: 18.sp,
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
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
                  Container(
                    width: 325.w,
                    height: 666.5.h,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 5.h),
                        // About Me Section
                        Container(
                          width: 220.w,
                          height: 50.h,
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          decoration: BoxDecoration(
                            color: Color(0xFF3D586D),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.r),
                              bottomRight: Radius.circular(40.r),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'ABOUT ME',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 10.h,
                          ),
                          child: GestureDetector(
                            onTap: () => _editAboutMe(),
                            child: Text(
                              aboutMe,
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Color(0xFF3D586D),
                                  fontSize: 13.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        // Experience Section
                        Container(
                          width: 220.w,
                          height: 50.h,
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          decoration: BoxDecoration(
                            color: Color(0xFF3D586D),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.r),
                              bottomRight: Radius.circular(40.r),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'EXPERIENCE',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: experience.map((experience) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: 16.h),
                                child: GestureDetector(
                                  onTap: () =>
                                      _editExperienceItem(context, experience),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        experience['company'] ?? '',
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            experience['position'] ?? '',
                                            style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                color: Color(0xFF3D586D),
                                                fontSize: 16.sp,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            experience['years'] ?? '',
                                            style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                                color: Color(0xFF3D586D),
                                                fontSize: 16.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8.h),
                                      Text(
                                        experience['description'] ?? '',
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                            color: Color(0xFF3D586D),
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 16.h),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        // Languages Section
                        Container(
                          width: 220.w,
                          height: 50.h,
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          decoration: BoxDecoration(
                            color: Color(0xFF3D586D),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.r),
                              bottomRight: Radius.circular(40.r),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'LANGUAGES',
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(12.w),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: languages.map((language) {
                                  return GestureDetector(
                                    onTap: () => _editLanguages(
                                      context,
                                      languages.indexOf(language),
                                      language,
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          '• $language',
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                              color: Color(0xFF3D586D),
                                              fontSize: 18.sp,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                      ],
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
              )
            ],
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
    Color tempNameColor = userNameColor;
    Color tempRoleColor = userRoleColor;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setStateDialog) {
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
                  const Text('Edit User Details',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
                    // Name input
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Name',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: 'Enter name',
                      ),
                    ),
                    SizedBox(height: 20),
                    // Role input
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Role',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: roleController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: 'Enter role',
                      ),
                    ),
                    SizedBox(height: 20),
                    // Name color selection
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Name Color',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
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
                                tempNameColor = color;
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
                    // Role color selection
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Role Color',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
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
                                tempRoleColor = color;
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
                    Navigator.of(context).pop(); // Close dialog without saving
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    // Update the values when "Save" is pressed
                    setState(() {
                      userName = nameController.text;
                      userRole = roleController.text;
                      userNameColor = tempNameColor;
                      userRoleColor = tempRoleColor;
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

  void _editEmail() async {
    final newEmail = await _editField('Email', email);
    if (newEmail != null) {
      setState(() {
        email = newEmail;
      });
    }
  }

  void _editPhoneNumber() async {
    final newPhoneNumber = await _editField('Phone Number', phoneNumber);
    if (newPhoneNumber != null) {
      setState(() {
        phoneNumber = newPhoneNumber;
      });
    }
  }

  void _editLocation() async {
    final newLocation = await _editField('Location', location);
    if (newLocation != null) {
      setState(() {
        location = newLocation;
      });
    }
  }

  void _editAboutMe() async {
    final newAboutMe = await _editField('About Me', aboutMe);
    if (newAboutMe != null) {
      setState(() {
        aboutMe = newAboutMe;
      });
    }
  }

  Future<String?> _editField(String field, String initialValue) async {
    TextEditingController controller =
        TextEditingController(text: initialValue);
    return await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit $field'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter $field',
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('SAVE'),
              onPressed: () {
                Navigator.of(context).pop(controller.text);
              },
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
            TextEditingController(text: item['years']);
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
                  item['years'] = yearController.text;
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

  void _editExperienceItem(BuildContext context, Map<String, String> item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController titleController =
            TextEditingController(text: item['company']);
        final TextEditingController positionController =
            TextEditingController(text: item['position']);
        final TextEditingController fromtoController =
            TextEditingController(text: item['years']);

        final TextEditingController descriptionController =
            TextEditingController(text: item['description']);

        return AlertDialog(
          title: const Text('Edit Experience'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Company'),
              ),
              TextField(
                controller: positionController,
                decoration: const InputDecoration(labelText: 'Position'),
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
                  item['company'] = titleController.text;
                  item['position'] = positionController.text;
                  item['years'] = fromtoController.text;
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

  Future<void> _editLanguages(
      BuildContext context, int index, String currentName) async {
    TextEditingController nameController =
        TextEditingController(text: currentName);
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Language'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Language Name'),
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
                  languages[index] = newName;
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
