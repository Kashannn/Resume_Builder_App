import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import '../utils/constant/app_images_constant.dart';

class Template2 extends StatefulWidget {
  const Template2({super.key});

  @override
  State createState() => _Template2State();
}

class _Template2State extends State<Template2> {
  Color aboutColor = Colors.white70;
  Color userNameColor = Color(0xff00FF88);
  Color userRoleColor = Colors.white70;
  Color phoneColor = Colors.white;
  Color emailColor = Colors.white;
  Color websiteColor = Colors.white;
  Color experienceTitleColor = Colors.white;
  Color experienceDescriptionColor = Colors.white;
  String userName = 'John Carter';
  String userRole = 'Product Designer';
  String email = 'contact@johncarter.com';
  String mobile = '+001 123 456 789';
  String website = 'johncarter.com';

  String about =
      "Lorem ipsum dolor sit amet consectetur adipiscing elit neque tempor malesuada adipiscing congue diam quis orci amet porttitor blandit amet nullam sit elit, purus blandit non ut non quam curabitur.";

  // List of languages with proficiency levels
  List<Map<String, String>> languages = [
    {
      'language': 'English',
      'proficiency': 'Native',
    },
    {
      'language': 'Spanish',
      'proficiency': 'Fluent',
    },
    {
      'language': 'French',
      'proficiency': 'Intermediate',
    },
  ];

  List<Map<String, String>> workExperience = [
    {
      'duration': '2020 - 2021',
      'title': 'Lead Product Designer',
      'description':
          'Quis orci amet porttitor blandit amet nullam sit elit purus blandit non ut non.',
    },
    {
      'duration': '2019 - 2020',
      'title': 'Lead Product Designer',
      'description':
          'Ultrices proin elit, tellus euismod leo id volutpat cursus integer faucibus.',
    },
    {
      'duration': '2018 - 2019',
      'title': 'Lead Product Designer',
      'description':
          'Lorem ipsum dolor sit amet justo, rhoncus felis dolor sit.',
    },
  ];

  List<Map<String, String>> education = [
    {
      'year': '2017 - 2020',
      'degree': 'Masters Degree',
      'institution': 'The University of Lahore',
    },
    {
      'year': '2013 - 2017',
      'degree': 'Bachelor Degree',
      'institution': 'Punjab University',
    },
    {
      'year': '2012 - 2015',
      'degree': 'Associate Degree',
      'institution': 'Some Other Institute',
    },
  ];

  List<Map<String, dynamic>> skills = [
    {
      'name': 'Figma',
      'level': 95,
    },
    {
      'name': 'Photoshop',
      'level': 80,
    },
    {
      'name': 'Illustrator',
      'level': 85,
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
    ScreenUtil.init(context, designSize: const Size(595, 1400));

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF26272E), // Dark background color
        body: Stack(
          children: [
            Container(
              width: 595.w,
              //height: 942.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40.h),
                        // Space from the top
                        _buildAvatarAndFrame(),
                        // Combine avatar and frame
                        SizedBox(height: 20.h),
                        // Add space between avatar/frame and other sections
                        _buildSectionWithLine(
                          title: "P R O F I L E",
                          child: _buildProfileSection(),
                          lineHeight: 100,
                          showIcon: Icon(Icons.circle,
                              color: Color(0xff00FF88), size: 10.w),
                        ),
                        _buildSectionWithLine(
                          title: "E X P E R I E N C E",
                          child: _buildExperienceSection(),
                          showIcon: Icon(Icons.circle,
                              color: Color(0xff00FF88), size: 10.w),
                        ),
                        _buildSectionWithLine(
                          title: " L A N G U A G E S",
                          child: _buildLanguagesSection(),
                          lineHeight: 100,
                          showIcon: Icon(Icons.circle,
                              color: Color(0xff00FF88), size: 10.w),
                        ),
                      ],
                    ),
                  ),

                  // Right side (Contact, Studies, Skills, Social Media)
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 120.h,
                          width: 20,
                        ), // Space to align with the mobile frame
                        _buildContactSection(),
                        SizedBox(
                          height: 10,
                        ), // Place contact section at the top
                        _buildSectionWithLine(
                          title: "S T U D I E S",
                          child: _buildStudiesSection(),
                        ),
                        _buildSectionWithLine(
                            title: "S K I L L S",
                            child: _buildSkillsSection(),
                            lineHeight: 200),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 50.w,
                height: 50.h,
                color: Color(0xff00FF88), // Green color
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 50.w,
                height: 20,
                color: Color(0xff00FF88), // Green color
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatarAndFrame() {
    return SizedBox(
      child: Container(
        width: 400.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Circular Avatar
            _buildAvatar(),
            SizedBox(width: 10.w),
            // Mobile Frame
            _buildMobileFrame(),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return GestureDetector(
      onTap: _pickImage,
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: _profileImage != null
            ? FileImage(_profileImage!)
            : AssetImage(AppImages.t2) as ImageProvider,
        radius: 60.w,
      ),
    );
  }

  Widget _buildMobileFrame() {
    return Container(
      width: 120.w, // Adjust width as needed
      height: 100.h, // Adjust height as needed
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(7.r),
            bottomLeft: Radius.circular(7.r),
            topRight: Radius.circular(7.r),
            bottomRight: Radius.zero),
        border: Border(
          top: BorderSide(color: Colors.white70, width: 1.w),
          left: BorderSide(color: Colors.white70, width: 1.w),
          bottom: BorderSide(color: Colors.white70, width: 1.w),
        ),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          width: 2,
        ),
        GestureDetector(
          onTap: () => _editUserDetails(context),
          child: Container(
            width: 80,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  userName,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    fontSize: 22.sp,
                    color: userNameColor, // Apply dynamic color
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  userRole,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.normal,
                    fontSize: 14.sp,
                    color: userRoleColor, // Apply dynamic color
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget _buildProfileSection() {
    return GestureDetector(
      onTap: () => _editAboutMe(context),
      child: Container(
        padding: EdgeInsets.only(left: 18.0, right: 16.0),
        child: Text(
          about,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: aboutColor, // Dynamic color for About text
          ),
          textAlign: TextAlign.justify,

        ),
      ),
    );
  }

  Widget _buildExperienceSection() {
    return Container(
      padding: EdgeInsets.only(left: 24.w, right: 16.w, top: 5.h, bottom: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...workExperience
              .map((expItem) => GestureDetector(
                    onTap: () => _editExperienceItem(context, expItem),
                    child: _buildExperienceItem(
                      jobTitle: expItem['title']!,
                      duration: expItem['duration']!,
                      description: expItem['description']!,
                      titleColor: Colors.greenAccent,
                      durationColor: Colors.white70,
                      descriptionColor: Colors.white70,
                    ),
                  ))
              .toList(),
        ],
      ),
    );
  }

  Widget _buildLanguagesSection() {
    return GestureDetector(
      onTap: () => _editLanguagesDialog(context),
      child: Container(
        padding: EdgeInsets.only(left: 24.w, right: 16.w, top: 5.h, bottom: 5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...languages.map((lang) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: _buildLanguageItem(lang['language']!, lang['proficiency']!),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }


  Widget _buildContactSection() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 0.h),
      child: GestureDetector(
        onTap: () => _editContactDetails(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.email, color: Color(0xff00FF88), size: 16.w),
                SizedBox(width: 8.w),
                Text(
                  email,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            Row(
              children: [
                Icon(Icons.phone, color: Color(0xff00FF88), size: 16.w),
                SizedBox(width: 8.w),
                Text(
                  mobile,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.ac_unit_outlined,
                    color: Color(0xff00FF88), size: 16.w),
                SizedBox(width: 8.w),
                Text(
                  website,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStudiesSection() {
    return Container(
      padding: EdgeInsets.only(left: 24.w, right: 16.w), // Add padding here
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...education
              .map((edu) => Column(
                    children: [
                      GestureDetector(
                        onTap: () => _editEducationItem(context, edu),
                        child: _buildStudiesItem(
                          edu['institution']!,
                          edu['year']!,
                          edu['degree']!,
                        ),
                      ),
                      SizedBox(height: 8.h),
                    ],
                  ))
              .toList(),
        ],
      ),
    );
  }

  Widget _buildSkillsSection() {
    return GestureDetector(
      onTap: () => _editSkillsDialog(context),
      child: Container(
        padding: EdgeInsets.only(
            left: 24.w, right: 16.w, top: 24.h, bottom: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...skills.map((skill) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: _buildSkillItem(skill['name'], skill['level']),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillItem(String skillName, int percentage) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skillName,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 4.h),
        Stack(
          children: [
            Container(
              width: 343.w, // Width of the skill bar
              height: 8.h,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(4.w),
              ),
            ),
            Container(
              width: (343 * (percentage / 100)).w,
              height: 8.h,
              decoration: BoxDecoration(
                color: percentage >= 80
                    ? Color(0xff00FF88)
                    : Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(4.w),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSectionWithLine({
    required String title,
    required Widget child,
    double lineHeight = 100.0, // Default line height
    Icon? showIcon, // Optional parameter to show icon
  }) {
    return Container(
      padding: EdgeInsets.only(left: 24.w, right: 16.w, top: 5.h, bottom: 6.h),
      // Add padding here
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 1.w,
                height: lineHeight.h, // Use the lineHeight parameter
                color: Colors.white70,
              ),
              if (showIcon != null)
                Positioned(
                  top: lineHeight.h / 2 -
                      (showIcon.size ?? 10.w) / 2, // Center the icon vertically
                  left: -5.w, // Adjust the position as needed
                  child: showIcon, // Use the passed icon
                ),
            ],
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Multiplex',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.w,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: 12.h),
                child,
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _editSkillsDialog(BuildContext context) async {
    List<Map<String, dynamic>> tempSkills = List.from(skills);

    await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setStateDialog) {
            return AlertDialog(
              title: Text('Edit Skills'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...tempSkills.asMap().entries.map((entry) {
                      int index = entry.key;
                      Map<String, dynamic> skill = entry.value;

                      TextEditingController nameController =
                      TextEditingController(text: skill['name']);
                      TextEditingController valueController =
                      TextEditingController(text: skill['level'].toString());

                      return Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: nameController,
                                  decoration:
                                  InputDecoration(labelText: 'Skill Name',
                                  border: OutlineInputBorder()),
                                  onChanged: (value) {
                                    tempSkills[index]['name'] = value;
                                  },
                                ),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: TextField(
                                  controller: valueController,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(labelText: 'Level',
                                  border: OutlineInputBorder()),
                                  onChanged: (value) {
                                    tempSkills[index]['level'] =
                                        int.tryParse(value) ?? 0;
                                  },
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.remove_circle),
                                onPressed: () {
                                  setStateDialog(() {
                                    tempSkills.removeAt(index);
                                  });
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                        ],
                      );
                    }).toList(),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            setStateDialog(() {
                              tempSkills.add({'name': '', 'level': 0});
                            });
                          },
                          icon: Icon(Icons.add),
                          label: Text('Add'),
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
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      skills = tempSkills; // Save changes to the main list
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text('Save'),
                ),
              ],
            );
          },
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
                decoration: const InputDecoration(labelText: 'Year',
                border: OutlineInputBorder()),
              ),
              10.verticalSpace,
              TextField(
                controller: degreeController,
                decoration: const InputDecoration(labelText: 'Degree',
                border: OutlineInputBorder()),
              ),
              10.verticalSpace,
              TextField(
                controller: institutionController,
                decoration: const InputDecoration(labelText: 'Institution',
                border: OutlineInputBorder()),
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

  Future<void> _editLanguagesDialog(BuildContext context) async {
    // Create a temporary copy of languages to edit
    List<Map<String, String>> tempLanguages = List.from(languages);

    await showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setStateDialog) {
            return AlertDialog(
              title: Text('Edit Languages'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Display each language with edit and remove options
                    ...tempLanguages.asMap().entries.map((entry) {
                      int index = entry.key;
                      Map<String, String> language = entry.value;

                      TextEditingController nameController =
                      TextEditingController(text: language['language']);
                      TextEditingController proficiencyController =
                      TextEditingController(text: language['proficiency']);

                      return Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: nameController,
                                  decoration: InputDecoration(labelText: 'Language',
                                  border: OutlineInputBorder()),
                                  onChanged: (value) {
                                    tempLanguages[index]['language'] = value;
                                  },
                                ),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: TextField(
                                  controller: proficiencyController,
                                  decoration:
                                  InputDecoration(labelText: 'Proficiency',
                                  border: OutlineInputBorder()),
                                  onChanged: (value) {
                                    tempLanguages[index]['proficiency'] = value;
                                  },
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.remove_circle),
                                onPressed: () {
                                  setStateDialog(() {
                                    tempLanguages.removeAt(index);
                                  });
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                        ],
                      );
                    }).toList(),
                    SizedBox(height: 10),
                    // Add language button
                    ElevatedButton.icon(
                      onPressed: () {
                        setStateDialog(() {
                          tempLanguages.add({'language': '', 'proficiency': ''});
                        });
                      },
                      icon: Icon(Icons.add),
                      label: Text('Add Language'),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close dialog without saving
                  },
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      languages = tempLanguages; // Update main languages list
                    });
                    Navigator.of(context).pop(); // Close dialog
                  },
                  child: Text('Save'),
                ),
              ],
            );
          },
        );
      },
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
                      decoration: const InputDecoration(labelText: 'Name',
                      border: OutlineInputBorder()
                      ),
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
                          Color(0xFF5BBBFF),
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
                      decoration: const InputDecoration(labelText: 'Role',
                      border: OutlineInputBorder()
                      ),
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
                          Colors.lightBlueAccent,
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

  void _editExperienceItem(BuildContext context, Map<String, String> item) {
    Color tempTitleColor = Colors.greenAccent; // Temporary color for the title
    Color tempDescriptionColor = Colors.white70; // Temporary color for description
    Color tempDurationColor = Colors.white70; // Temporary color for duration

    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController titleController =
        TextEditingController(text: item['title']);
        final TextEditingController descriptionController =
        TextEditingController(text: item['description']);
        final TextEditingController durationController =
        TextEditingController(text: item['duration']);

        return StatefulBuilder(
          builder: (context, setStateDialog) {
            return AlertDialog(
              title: const Text('Edit Experience'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: titleController,
                      decoration: const InputDecoration(labelText: 'Title',
                      border: OutlineInputBorder()),
                      style: const TextStyle(color: Colors.black),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: durationController,
                      decoration: const InputDecoration(labelText: 'Duration',
                      border: OutlineInputBorder()),
                      style: const TextStyle(color: Colors.black),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: descriptionController,
                      decoration: const InputDecoration(labelText: 'Description',
                      border: OutlineInputBorder()),
                      style: const TextStyle(color: Colors.black),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(75),
                      ],
                      maxLines: 5,
                      onChanged: (text) {
                        setStateDialog(() {}); // Rebuild the dialog to update character count
                      },
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '${descriptionController.text.length}/75', // Display character count
                        style: const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      item['title'] = titleController.text;
                      item['description'] = descriptionController.text;
                      item['duration'] = durationController.text;
                    });
                    Navigator.of(context).pop(); // Close dialog
                  },
                  child: const Text('Save'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close dialog without saving
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
  void _editContactDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController phoneController =
            TextEditingController(text: mobile);
        final TextEditingController emailController =
            TextEditingController(text: email);
        final TextEditingController websiteController =
            TextEditingController(text: website);

        return AlertDialog(
          title: const Text('Edit Contact Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(labelText: 'Phone',
                border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email',
                border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              TextField(
                controller: websiteController,
                decoration: const InputDecoration(labelText: 'Website',
                border: OutlineInputBorder()),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  mobile = phoneController.text;
                  email = emailController.text;
                  website = websiteController.text;
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

  void _editAboutMe(BuildContext context) {
    TextEditingController aboutController = TextEditingController(text: about);
    Color tempAboutColor = aboutColor;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setStateDialog) {
            return AlertDialog(
              title: const Text('Edit About Me'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: aboutController,
                      decoration: InputDecoration(
                        labelText: 'About',
                        hintText: 'Tell us about yourself (200 characters max)',
                        border: const OutlineInputBorder(),
                        counterText: '', // Hide the default character counter
                      ),
                      maxLines: 8,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(200), // Limit to 300 characters
                      ],
                      onChanged: (text) {
                        setStateDialog(() {}); // Rebuild dialog to update character count
                      },
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '${aboutController.text.length}/200', // Display character count
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
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
                      about = aboutController.text;
                      aboutColor = tempAboutColor; // Save selected about color
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



  Future<String?> _showEditDialog(String title, String initialValue,
      {bool multiline = false}) async {
    final controller = TextEditingController(text: initialValue);
    return await showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: multiline
              ? TextField(
                  controller: controller,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: 'Enter new $title',
                  ),
                )
              : TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: 'Enter new $title',
                  ),
                ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, controller.text),
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, null),
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}

Widget _buildExperienceItem({
  required String jobTitle,
  required String duration,
  required String description,
  required Color titleColor,
  required Color durationColor,
  required Color descriptionColor,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        jobTitle,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
          color: titleColor, // Apply dynamic color
        ),
      ),
      SizedBox(height: 4.h),
      Text(
        duration,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
          color: durationColor, // Apply dynamic color
        ),
      ),
      SizedBox(height: 4.h),
      Text(
        description,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
          color: descriptionColor, // Apply dynamic color
        ),
        textAlign: TextAlign.justify,
      ),
    ],
  );
}

Widget _buildLanguageItem(String language, String proficiency) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        language,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          fontSize: 12.sp,
          color: Colors.white,
        ),
      ),
      Text(
        proficiency,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
          color: Colors.white70,
        ),
      ),
    ],
  );
}

Widget _buildStudiesItem(
    String institution, String duration, String description) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        institution,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: Color(0xff00FF88),
        ),
      ),
      SizedBox(height: 4.h),
      Text(
        duration,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: Colors.white70,
        ),
      ),
      Text(
        description,
        style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: Colors.white70,
        ),
      ),
    ],
  );
}
