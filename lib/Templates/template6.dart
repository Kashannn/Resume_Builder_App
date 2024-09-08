import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../utils/constant/app_colors.dart';
import '../utils/constant/app_images_constant.dart';
import '../utils/constant/app_textstyle_constant.dart';

class Template6 extends StatefulWidget {
  const Template6({super.key});

  @override
  State<Template6> createState() => _Template6State();
}

class _Template6State extends State<Template6> {
  String name = 'John Doe';
  String jobTitle = 'Software Developer';
  String email = 'contact@entreprenur.com';
  String phone = '(443) 212 - 6501';
  String aboutMe =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vel eu vulputate et id morbi proin quam eget aliquam pellentesque congue massa mattis fringilla platea.';
  List<Map<String, String>> workExperience = [
    {
      'title': 'VP of Marketing',
      'from': '2019',
      'to': 'Present',
      'description':
          'Ut in orci suspendisse aliquet justo in faucibus sed lobortis. Semper facilisi non sed interdum ipsum fusce at nisi.'
    },
    {
      'title': 'Head of Marketing',
      'from': '2018',
      'to': '2019',
      'description':
          'Id eget faucibus neque tristique ut mi duis nec cursus posuere donec non sagittis pretium tortor ac cursus eget bibendum.'
    },
    {
      'title': 'Growth Hacker',
      'from': '2017',
      'to': '2018',
      'description':
          'Nec commodo nulla diam tellus sit sem lorem amet pharetra, sed gravida lectus phasellus in libero nam pulvinar suscipit.'
    },
  ];
  List<Map<String, String>> education = [
    {
      'from': '2018',
      'to': '2021',
      'degree': 'B.S of Business and Marketing',
      'institution': 'University of Oxford.'
    },
    {
      'from': '2015',
      'to': '2018',
      'degree': 'B.S of Digital Marketing',
      'institution': 'University of Oxford.'
    },
  ];
  List<String> skills = [
    'Growth Marketing',
    'Optimization',
    'Data Analysis',
    'Strategy for B2B',
    'Social Media',
    'SEO & SEM',
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColorsTemplate10.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: _pickImage,
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage: _profileImage != null
                                ? FileImage(_profileImage!)
                                : AssetImage(AppImages.profilePicture)
                                    as ImageProvider,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () => _editName(),
                              child: Text(
                                name,
                                style: AppTextStylesTemplate10.nameStyle,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => _editJobTitle(),
                              child: Text(
                                jobTitle,
                                style: AppTextStylesTemplate10.jobTitleStyle,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact:',
                              style: AppTextStylesTemplate10.contactLabelStyle,
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  color: AppColorsTemplate10.contactText,
                                  size: 10.0,
                                ),
                                SizedBox(width: 5.w),
                                GestureDetector(
                                  onTap: () => _editContactInfo('email'),
                                  child: Text(
                                    email,
                                    style: AppTextStylesTemplate10
                                        .contactInfoStyle,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: AppColorsTemplate10.contactText,
                                  size: 10.0,
                                ),
                                SizedBox(width: 5.w),
                                GestureDetector(
                                  onTap: () => _editContactInfo('phone'),
                                  child: Text(
                                    phone,
                                    style: AppTextStylesTemplate10
                                        .contactInfoStyle,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Divider(color: AppColorsTemplate10.divider, thickness: 0.5.h),
                SizedBox(height: 2.h),
                Container(
                  width: 545.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'About Me',
                        style: AppTextStylesTemplate10.sectionTitleStyle,
                      ),
                      SizedBox(width: 10.w),
                      SizedBox(
                        width: 220.w,
                        child: GestureDetector(
                          onTap: () => _editAboutMe(),
                          child: Text(
                            aboutMe,
                            style: AppTextStylesTemplate10.descriptionTextStyle,
                            textAlign: TextAlign.justify,
                            maxLines: 4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Divider(color: AppColorsTemplate10.divider, thickness: 0.5.h),
                SizedBox(height: 5.h),
                Container(
                  width: 340.w,
                  //height: 150.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Work Experience',
                        style: AppTextStylesTemplate10.sectionTitleStyle,
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: workExperience
                            .map((experience) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () => _editExperience(experience),
                                      child: buildExperienceRow(
                                        experience['title']!,
                                        '${experience['from']} - ${experience['to']}',
                                      ),
                                    ),
                                    buildDescriptionText(
                                        experience['description']!),
                                    SizedBox(height: 15.h),
                                  ],
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Divider(color: AppColorsTemplate10.divider, thickness: 0.5.h),
                SizedBox(height: 5.h),
                Container(
                  // width: 290.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Education',
                        style: AppTextStylesTemplate10.sectionTitleStyle,
                      ),
                      Container(
                        width: 220.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: education
                              .map((edu) => GestureDetector(
                                    onTap: () => _editEducation(edu),
                                    child: buildEducationRow(
                                      '${edu['from']} - ${edu['to']}',
                                      edu['degree']!,
                                      edu['institution']!,
                                    ),
                                  ))
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Divider(color: AppColorsTemplate10.divider, thickness: 0.5.h),
                SizedBox(height: 5.h),
                Container(
                  width: 530.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Skills',
                        style: AppTextStylesTemplate10.sectionTitleStyle,
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () => _editSkills(),
                            child: buildSkillsRow(),
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
      ),
    );
  }

  Widget buildExperienceRow(String title, String duration) {
    return SizedBox(
      width: 190.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStylesTemplate10.experienceTitleStyle,
          ),
          Text(
            duration,
            style: AppTextStylesTemplate10.experienceDurationStyle,
          ),
        ],
      ),
    );
  }

  Widget buildDescriptionText(String text) {
    return SizedBox(
      width: 220.w,
      child: Text(
        text,
        style: AppTextStylesTemplate10.descriptionTextStyle,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget buildEducationRow(String years, String degree, String institution) {
    return SizedBox(
      width: 200.w,
      height: 50.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            years,
            style: AppTextStylesTemplate10.educationTextStyle,
          ),
          SizedBox(height: 2.h),
          Text(
            degree,
            style: AppTextStylesTemplate10.degreeTextStyle,
          ),
          SizedBox(height: 2.h),
          Text(
            institution,
            style: AppTextStylesTemplate10.educationTextStyle,
          ),
        ],
      ),
    );
  }

  Widget buildSkillsRow() {
    // Helper function to split the list into chunks of the specified size
    List<List<String>> splitIntoChunks(List<String> list, int chunkSize) {
      List<List<String>> chunks = [];
      for (int i = 0; i < list.length; i += chunkSize) {
        chunks.add(list.sublist(
            i, i + chunkSize > list.length ? list.length : i + chunkSize));
      }
      return chunks;
    }

    // Split skills into chunks of 2
    final skillChunks = splitIntoChunks(skills, 2);

    return SizedBox(
      width: 220.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: skillChunks
            .map((chunk) => Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: chunk
                          .map((skill) => Expanded(
                                child: Text(
                                  '• $skill',
                                  style: AppTextStylesTemplate10.skillTextStyle,
                                ),
                              ))
                          .toList(),
                    ),
                    SizedBox(height: 5.h),
                  ],
                ))
            .toList(),
      ),
    );
  }

  Future<void> _editName() async {
    final newName = await _showEditDialog('Name', name);
    if (newName != null && newName.isNotEmpty) {
      setState(() {
        name = newName;
      });
    }
  }

  Future<void> _editJobTitle() async {
    final newJobTitle = await _showEditDialog('Job Title', jobTitle);
    if (newJobTitle != null && newJobTitle.isNotEmpty) {
      setState(() {
        jobTitle = newJobTitle;
      });
    }
  }

  Future<void> _editAboutMe() async {
    final newAboutMe =
        await _showEditDialog('About Me', aboutMe, multiline: true);
    if (newAboutMe != null && newAboutMe.isNotEmpty) {
      setState(() {
        aboutMe = newAboutMe;
      });
    }
  }

  Future<void> _editExperience(Map<String, String> experience) async {
    final updatedExperience = await _showExperienceEditDialog(experience);
    if (updatedExperience != null) {
      setState(() {
        final index = workExperience.indexOf(experience);
        if (index != -1) {
          workExperience[index] = updatedExperience;
        }
      });
    }
  }

  Future<void> _editEducation(Map<String, String> edu) async {
    final updatedEducation = await _showEducationEditDialog(edu);
    if (updatedEducation != null) {
      setState(() {
        final index = education.indexOf(edu);
        if (index != -1) {
          education[index] = updatedEducation;
        }
      });
    }
  }

  Future<void> _editSkills() async {
    final updatedSkills = await _showSkillsEditDialog();
    if (updatedSkills != null) {
      setState(() {
        skills = updatedSkills;
      });
    }
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

  Future<Map<String, String>?> _showExperienceEditDialog(
      Map<String, String> experience) async {
    final titleController = TextEditingController(text: experience['title']);
    final fromController = TextEditingController(text: experience['from']);
    final toController = TextEditingController(text: experience['to']);
    final descriptionController =
        TextEditingController(text: experience['description']);

    return await showDialog<Map<String, String>>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Experience'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
              ),
              TextField(
                controller: fromController,
                decoration: InputDecoration(
                  labelText: 'From',
                ),
              ),
              TextField(
                controller: toController,
                decoration: InputDecoration(
                  labelText: 'To',
                ),
              ),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description',
                ),
                maxLines: 3,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, {
                  'title': titleController.text,
                  'from': fromController.text,
                  'to': toController.text,
                  'description': descriptionController.text,
                });
              },
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

  Future<Map<String, String>?> _showEducationEditDialog(
      Map<String, String> edu) async {
    final institutionController =
        TextEditingController(text: edu['institution']);
    final titleController = TextEditingController(text: edu['degree']);
    final fromController = TextEditingController(text: edu['from']);
    final toController = TextEditingController(text: edu['to']);

    return await showDialog<Map<String, String>>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Education'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: institutionController,
                decoration: InputDecoration(
                  labelText: 'Institution',
                ),
              ),
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Degree',
                ),
              ),
              TextField(
                controller: fromController,
                decoration: InputDecoration(
                  labelText: 'From',
                ),
              ),
              TextField(
                controller: toController,
                decoration: InputDecoration(
                  labelText: 'To',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, {
                  'institution': institutionController.text,
                  'degree': titleController.text,
                  'from': fromController.text,
                  'to': toController.text,
                });
              },
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

  Future<List<String>?> _showSkillsEditDialog() async {
    final skillsController = TextEditingController(text: skills.join(', '));
    return await showDialog<List<String>>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Skills'),
          content: TextField(
            controller: skillsController,
            decoration: InputDecoration(
              labelText: 'Skills (comma separated)',
            ),
            maxLines: 5,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(
                    context,
                    skillsController.text
                        .split(',')
                        .map((s) => s.trim())
                        .toList());
              },
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

  Future<void> _editContactInfo(String field) async {
    String? initialValue;
    if (field == 'email') {
      initialValue = email;
    } else if (field == 'phone') {
      initialValue = phone;
    }

    final newValue = await _showEditDialog(field.capitalize(), initialValue!);
    if (newValue != null && newValue.isNotEmpty) {
      setState(() {
        if (field == 'email') {
          email = newValue;
        } else if (field == 'phone') {
          phone = newValue;
        }
      });
    }
  }
}

extension CapitalizeExtension on String {
  String capitalize() {
    return this[0].toUpperCase() + substring(1);
  }
}
