import 'dart:io';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../utils/constant/app_images_constant.dart';

class Template13 extends StatefulWidget {
  const Template13({super.key});

  @override
  State<Template13> createState() => _Template13State();
}

class _Template13State extends State<Template13> {
  File? _profileImage; // Variable to hold the image file

  String userName = 'ELIZABETH HARRIS';
  String userRole = 'WEB DESIGNER & DEVELOPER';
  String phone = '+001 123 456 789';
  String email = 'Info@yourmail.com';
  String website = 'www.youwebsite.com';
  String location = 'Street Name, Country';
  String aboutDetails =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.';
  List<Map<String, String>> experiences = [
    {
      'title': 'JOB POSITION / TITLE HERE',
      'details': 'Company  Institute Name  Location or Country - 2010 - 2014',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
    },
    {
      'title': 'JOB POSITION / TITLE HERE',
      'details': 'Company  Institute Name  Location or Country - 2010 - 2014',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
    },
  ];
  List<Map<String, String>> education = [
    {
      'year': '2015',
      'degree': 'Enter Masters Degree',
      'institution': 'University / College / Institute',
    },
    {
      'year': '2012',
      'degree': 'Enter Bachelor Degree',
      'institution': 'University / College / Institute',
    },
  ];

  // Additional Lists for Skills, Languages, and Awards
  List<String> skills = [
    'Web design',
    'Graphic design',
    'UI design',
    'Drawing',
    'Animation',
  ];

  List<String> languages = [
    'French',
    'Chinese',
    'Spanish',
    'English',
  ];

  List<Map<String, String>> awards = [
    {
      'year': '2015',
      'title': 'Consectetuer elit uteum',
      'description':
          'Aliquip exercitation ullamco laboris nisi ut ex ea commodo consequat.',
    },
    {
      'year': '2012',
      'title': 'Lamco laboris nisi ut',
      'description':
          'Doconseque exercitation ullamco laboris nisi ut aliquip ex commodo.',
    },
  ];

  Map<String, String> reference = {
    'name': 'Reference Name',
    'company': 'Company Name',
  };

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
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 595.w,
          height: 842.h,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Top Section
                SizedBox(
                  height: 90.h,
                  width: 595.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 225.w,
                        decoration: const BoxDecoration(
                          color: Color(0xFF1E2837),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: _pickImage,
                              child: Container(
                                height: 80.h,
                                width: 80
                                    .h, // Make sure the width and height are equal to ensure a proper aspect ratio
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30.r),
                                    bottomLeft: Radius.circular(30.r),
                                  ),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30.r),
                                      bottomLeft: Radius.circular(30.r),
                                    ),
                                    child: _profileImage == null
                                        ? Image.asset(
                                            AppImages.t13,
                                            fit: BoxFit.cover, // Default image
                                          )
                                        : Image.file(
                                            _profileImage!,
                                            fit: BoxFit
                                                .cover, // Display picked image
                                          ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _editUserDetails(context),
                        child: Container(
                          height: 90.h,
                          width: 320.w,
                          decoration: const BoxDecoration(
                            color: Color(0xFF1E2837),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          userName,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 21.sp,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        Text(
                                          userRole,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11.sp,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Main Content
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Left Column
                    Container(
                      width: 225.w,
                      //height: 614.h,
                      color: const Color(0xFFF5F5F5),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 12.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Contact Header
                          buildSectionHeader('Contact'),
                          SizedBox(height: 8.h),
                          GestureDetector(
                            onTap: () => _editContactDetails(context),
                            child: buildContactItem(Icons.phone, phone),
                          ),
                          SizedBox(height: 8.h),
                          GestureDetector(
                            onTap: () => _editContactDetails(context),
                            child: buildContactItem(Icons.email, email),
                          ),
                          SizedBox(height: 8.h),
                          GestureDetector(
                            onTap: () => _editContactDetails(context),
                            child: buildContactItem(Icons.web, website),
                          ),
                          SizedBox(height: 8.h),
                          GestureDetector(
                            onTap: () => _editContactDetails(context),
                            child:
                                buildContactItem(Icons.location_on, location),
                          ),
                          SizedBox(height: 8.h),

                          // Skill Header
                          buildSectionHeader('SKILL'),
                          SizedBox(height: 8.h),
                          Column(
                            children: skills
                                .map((skill) => GestureDetector(
                                      onTap: () => _editSkill(context, skill),
                                      child: buildSkillItem(skill),
                                    ))
                                .toList(),
                          ),
                          SizedBox(height: 8.h),

                          // Languages Header
                          buildSectionHeader('LANGUAGES'),
                          SizedBox(height: 8.h),
                          Column(
                            children: languages
                                .map((language) => GestureDetector(
                                      onTap: () =>
                                          _editLanguage(context, language),
                                      child: buildSkillItem(language),
                                    ))
                                .toList(),
                          ),
                          SizedBox(height: 8.h),

                          // Reference Header
                          // Reference Header
                          buildSectionHeader('REFERENCE'),
                          SizedBox(height: 8.h),
                          GestureDetector(
                            onTap: () => _editReference(context),
                            child: buildReferenceItem(),
                          ),
                        ],
                      ),
                    ),

                    // Right Column
                    Container(
                      width: 320.w,
                      //height: 629.h,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // Education Header
                          buildSectionHeader('EDUCATION'),
                          //SizedBox(height: 12.h),
                          Column(
                            children: education
                                .map((e) => GestureDetector(
                                      onTap: () =>
                                          _editEducationItem(context, e),
                                      child: buildEducationItem(e['year']!,
                                          e['degree']!, e['institution']!),
                                    ))
                                .toList(),
                          ),
                          //SizedBox(height: 24.h),

                          // Work Experience Header
                          buildSectionHeader('WORK EXPERIENCE'),
                          SizedBox(height: 8.h),
                          Column(
                            children: experiences
                                .map((e) => GestureDetector(
                                      onTap: () =>
                                          _editExperienceItem(context, e),
                                      child: buildWorkExperienceItem(
                                          e['title']!,
                                          e['details']!,
                                          e['description']!),
                                    ))
                                .toList(),
                          ),
                          SizedBox(height: 8.h),

                          // Awards Header
                          buildSectionHeader('AWARDS'),
                          SizedBox(height: 8.h),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(awards.length, (index) {
                              final award = awards[index];
                              return GestureDetector(
                                onTap: () => _editAwardItem(
                                    context, index), // Pass the index
                                child: buildAwardsItem(
                                  award['year']!,
                                  award['title']!,
                                  award['description']!,
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSectionHeader(String title) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      color: const Color(0xFF202636),
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildContactItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 14.sp),
        SizedBox(width: 8.w),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 10.sp),
          ),
        ),
      ],
    );
  }

  Widget buildSkillItem(String skill) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        children: [
          Text(
            skill,
            style: TextStyle(fontSize: 12.sp),
          ),
          SizedBox(width: 8.w),
          Expanded(
              child: Container(
            height: 4.h,
            decoration: BoxDecoration(
              color: const Color(0xFF202636),
              borderRadius: BorderRadius.circular(2),
            ),
          )),
        ],
      ),
    );
  }

  Widget buildReferenceItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reference Name',
          style: TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          'Company Name',
          style: TextStyle(fontSize: 10.sp),
        ),
      ],
    );
  }

  Widget buildEducationItem(String year, String degree, String institution) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            year,
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  degree,
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  institution,
                  style: TextStyle(fontSize: 10.sp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildWorkExperienceItem(
      String title, String details, String description) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            details,
            style: TextStyle(fontSize: 10.sp),
          ),
          SizedBox(height: 4.h),
          Text(
            description,
            style: TextStyle(fontSize: 10.sp),
          ),
        ],
      ),
    );
  }

  Widget buildAwardsItem(String year, String title, String description) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            year,
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            title,
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            description,
            style: TextStyle(fontSize: 10.sp),
          ),
        ],
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

  void _editContactDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController phoneController =
            TextEditingController(text: phone);
        final TextEditingController emailController =
            TextEditingController(text: email);
        final TextEditingController websiteController =
            TextEditingController(text: website);
        final TextEditingController locationController =
            TextEditingController(text: location);

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
                controller: websiteController,
                decoration: const InputDecoration(labelText: 'Website'),
              ),
              TextField(
                controller: locationController,
                decoration: const InputDecoration(labelText: 'Location'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  phone = phoneController.text;
                  email = emailController.text;
                  website = websiteController.text;
                  location = locationController.text;
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

  Future<void> _editAwardItem(BuildContext context, int index) async {
    TextEditingController yearController =
        TextEditingController(text: awards[index]['year']);
    TextEditingController titleController =
        TextEditingController(text: awards[index]['title']);
    TextEditingController descriptionController =
        TextEditingController(text: awards[index]['description']);

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Award'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: yearController,
                decoration: const InputDecoration(labelText: 'Year'),
              ),
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Title'),
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
                  awards[index] = {
                    'year': yearController.text,
                    'title': titleController.text,
                    'description': descriptionController.text,
                  };
                });
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _editReference(BuildContext context) async {
    TextEditingController nameController =
        TextEditingController(text: reference['name']);
    TextEditingController companyController =
        TextEditingController(text: reference['company']);

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Reference'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: companyController,
                decoration: const InputDecoration(labelText: 'Company'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  reference['name'] = nameController.text;
                  reference['company'] = companyController.text;
                });
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _editLanguage(BuildContext context, String language) async {
    TextEditingController languageController =
        TextEditingController(text: language);

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Language'),
          content: TextField(
            controller: languageController,
            decoration: const InputDecoration(labelText: 'Language'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  languages[languages.indexOf(language)] =
                      languageController.text;
                });
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _editSkill(BuildContext context, String skill) async {
    TextEditingController skillController = TextEditingController(text: skill);

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Skill'),
          content: TextField(
            controller: skillController,
            decoration: const InputDecoration(labelText: 'Skill'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  skills[skills.indexOf(skill)] = skillController.text;
                });
                Navigator.pop(context);
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
