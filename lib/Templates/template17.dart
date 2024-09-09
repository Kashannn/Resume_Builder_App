import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/constant/app_images_constant.dart';

class Template17 extends StatefulWidget {
  const Template17({super.key});

  @override
  State<Template17> createState() => _Template17State();
}

class _Template17State extends State<Template17> {
  @override

  String userName = 'John Carter';
  String userRole = 'Product Designer';
  String socialMedia = '@johncarter';
  String email = 'contact@johncarter.com';
  String mobile = '+001 123 456 789';
  String about = "Lorem ipsum dolor sit amet consectetur adipiscing elit neque tempor malesuada adipiscing congue diam quis orci amet porttitor blandit amet nullam sit elit, purus blandit non ut non quam curabitur.";

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

  List<Map<String, String>> workExperience = [
    {
      'company': 'FACEBOOK',
      'duration': '2020 - 2021',
      'title': 'Lead Product Designer',
      'description': 'Quis orci amet porttitor blandit amet nullam sit elit purus blandit non ut non.',
    },
    {
      'company': 'GOOGLE',
      'duration': '2019 - 2020',
      'title': 'Lead Product Designer',
      'description': 'Ultrices proin elit, tellus euismod leo id volutpat cursus integer faucibus.',
    },
    {
      'company': 'TWITTER',
      'duration': '2018 - 2019',
      'title': 'Lead Product Designer',
      'description': 'Lorem ipsum dolor sit amet justo, rhoncus felis dolor sit.',
    },
  ];

  List<String> skills = [
    'Growth Marketing',
    'Optimization',
    'Data Analysis',
    'Strategy for B2B',
    'Social Media',
  ];
  List<String> languages = [
    'URDU',
    'ENGLISH',
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


  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(595, 1200));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 595.w,
          //height: 1.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1D1D1D), Color(0xFF484343)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Container(
                width: 595.w,
                height: 120.h,
                color: Colors.transparent,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.w),
                      child: GestureDetector(
                        onTap: _pickImage,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: _profileImage != null
                              ? FileImage(_profileImage!)
                              : AssetImage(
                              AppImages.profilePicture17)
                          as ImageProvider,
                          radius: 60.r,
                        ),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    // Name and Title
                    GestureDetector(
                      onTap: () => _editUserDetails(context),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            userName,
                            style: GoogleFonts.sourceCodePro(
                              fontWeight: FontWeight.w700,
                              fontSize: 24.sp,
                              color: Colors.blueAccent,
                            ),
                          ),
                          Text(
                            userRole,
                            style: GoogleFonts.sourceCodePro(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    // Contact Information
                    GestureDetector(
                      onTap: () => _editContactDetails(context),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Email",
                            style: GoogleFonts.sourceCodePro(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            email,
                            style: GoogleFonts.sourceCodePro(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            "Phone Number",
                            style: GoogleFonts.sourceCodePro(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            mobile,
                            style: GoogleFonts.sourceCodePro(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16.w),
                  ],
                ),
              ),
              //SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Container(
                      width: 250.w,
                      //height: 690.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 250.w,
                            //height: 150.h,
                            child: Padding(
                              padding: EdgeInsets.all(8.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Title
                                  Text(
                                    "About $userName",
                                    style: GoogleFonts.sourceCodePro(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.sp,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  // Divider
                                  Container(
                                    width: 250.w,
                                    height: 1.h,
                                    color: Colors.grey[600],
                                  ),
                                  SizedBox(height: 8.h),
                                  // Description Text
                                  GestureDetector(
                                    onTap: () => _editAbout(context),
                                    child: Text(
                                      about,
                                      style: GoogleFonts.sourceCodePro(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                        color: Colors.grey[300],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 250.w,
                            //height: 373.h,
                            // color: Colors.yellow, // Background color for demonstration; adjust or remove as needed
                            child: Padding(
                              padding: EdgeInsets.all(8.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Section Title
                                  Text(
                                    "Education",
                                    style: GoogleFonts.sourceCodePro(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.sp,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  // Divider
                                  Container(
                                    width: 250.w,
                                    height: 1.h,
                                    color: Colors.grey[600],
                                  ),
                                  SizedBox(height: 8.h),
                                  // Education Item 1
                                  SizedBox(height: 16.h,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      for (var edu in education)
                                        GestureDetector(
                                          onTap: () => _editEducationItem(context,edu),
                                          child: Padding(
                                            padding: EdgeInsets.only(bottom: 16.h),
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
                          ),
                          Container(
                            width: 250.w,
                           // height: 40.h,
                            // color: Colors.yellow, // Background color for demonstration; adjust or remove as needed
                            child: GestureDetector(

                              onTap: () => _editSocialMedia(context),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Username
                                  Text(
                                    socialMedia,
                                    style: GoogleFonts.sourceCodePro(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  // Social Media Links
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Twitter",
                                        style: GoogleFonts.sourceCodePro(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Facebook",
                                        style: GoogleFonts.sourceCodePro(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Instagram",
                                        style: GoogleFonts.sourceCodePro(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 250.w,
                    //height: 690.h,
                    // color: Colors.grey, // Background color for demonstration; adjust or remove as needed
                    child: Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Section Title: Work Experience
                          Text(
                            "Work Experience",
                            style: GoogleFonts.sourceCodePro(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                              color: Colors.blueAccent,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          // Divider
                          Container(
                            width: 250.w,
                            height: 1.h,
                            color: Colors.grey[600],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (var experience in workExperience)
                                Padding(
                                  padding: EdgeInsets.only(bottom: 16.h),
                                  child: GestureDetector(
                                    onTap: () => _editExperienceItem(context,experience),
                                    child: _buildExperienceItem(
                                      company: experience['company']!,
                                      duration: experience['duration']!,
                                      title: experience['title']!,
                                      description: experience['description']!,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          //SizedBox(height: 16.h),
                          // Section Title: Skills
                          Text(
                            "Skills",
                            style: GoogleFonts.sourceCodePro(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                              color: Colors.blueAccent,
                            ),
                          ),
                          //SizedBox(height: 8.h),
                          // Divider
                          Container(
                            width: 250.w,
                            height: 1.h,
                            color: Colors.grey[600],
                          ),
                          SizedBox(height: 8.h),
                          // Skills List
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (var skill in skills)
                                GestureDetector(
                                    onTap: () => _showSkillsEditDialog(),
                                    child: _buildSkillItem(skill)),
                            ],
                          ),
                          SizedBox(height: 16.h),
                          // Section Title: Skills (Second)
                          Text(
                            "Language",
                            style: GoogleFonts.sourceCodePro(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                              color: Colors.blueAccent,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          // Divider
                          Container(
                            width: 250.w,
                            height: 1.h,
                            color: Colors.grey[600],
                          ),
                          SizedBox(height: 8.h),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                          for (var i = 0; i < languages.length; i++)
                        GestureDetector(
                        onTap: ()=>_editLanguages(context, i, languages[i]),
                          child: _buildSkillItem(languages[i]),)
                      ])
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
  void _editContactDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController phoneController =
        TextEditingController(text: mobile);
        final TextEditingController emailController =
        TextEditingController(text: email);

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
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  mobile = phoneController.text;
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
          style: GoogleFonts.sourceCodePro(
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            color: Colors.grey[500],
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          degree,
          style: GoogleFonts.sourceCodePro(
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: Colors.white,
          ),
        ),
        Text(
          institution,
          style: GoogleFonts.sourceCodePro(
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            color: Colors.grey[500],
          ),
        ),
      ],
    );
  }

  Widget _buildExperienceItem({
    required String company,
    required String duration,
    required String title,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          company,
          style: GoogleFonts.sourceCodePro(
            fontWeight: FontWeight.w700,
            fontSize: 12.sp,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          duration,
          style: GoogleFonts.sourceCodePro(
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            color: Colors.grey[500],
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          title,
          style: GoogleFonts.sourceCodePro(
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          description,
          style: GoogleFonts.sourceCodePro(
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            color: Colors.grey[300],
          ),
        ),
      ],
    );
  }

  Widget _buildSkillItem(String skill) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: Text(
        "• $skill",
        style: GoogleFonts.sourceCodePro(
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          color: Colors.white,
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
        final TextEditingController companyController =
        TextEditingController(text: item['company']);
        final TextEditingController descriptionController =
        TextEditingController(text: item['description']);
        final TextEditingController durationController =
        TextEditingController(text: item['duration']);

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
                controller: companyController,
                decoration: const InputDecoration(labelText: 'Company'),
              ),

              TextField(
                controller: durationController,
                decoration: const InputDecoration(labelText: 'Duration'),
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
                  item['company'] = companyController.text;
                  item['description'] = descriptionController.text;
                  item['duration'] = durationController.text;
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

                //update the skills
                setState(() {
                  skills = skillsController.text
                      .split(',')
                      .map((s) => s.trim())
                      .toList();
                });

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
  Future<void> _editLanguages(BuildContext context, int index,
      String currentName) async {
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
