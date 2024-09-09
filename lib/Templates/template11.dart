import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import '../utils/constant/app_images_constant.dart';

class Template11 extends StatefulWidget {
  const Template11({super.key});

  @override
  State createState() => _Template11State();
}

class _Template11State extends State<Template11> {

  String name = 'Jhon Doe';
  String role = 'UX/UI Designer';
  String email = 'hello@mysite.com';
  String phone = '+123-456-7890';
  String website = 'www.mysite.com';

  String about = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.';


  final List<String> languages = [
    'Urdu',
    'English',
  ];

  List<Map<String, dynamic>> skillsData = [
    {'name': 'Figma', 'proficiency': 80},
    {'name': 'XD', 'proficiency': 70},
    {'name': 'PS', 'proficiency': 60},
    {'name': 'AL', 'proficiency': 60},
  ];

  final List<Map<String, String>> experiences = [
    {
      'title': 'UI Designer',
      'fromto': 'Aug 2020 - Present',
      'description': 'Product team to prototype, design and deliver the UI and UX experience with a lean design process: research, design, test, and iterate.',
    },
    {
      'title': 'UX Designer',
      'fromto': 'Aug 2015 - Aug 2020',
      'description': 'Lead the UI design with the accountability of the design system, collaborated with product and development teams on core projects to improve product interfaces and experiences.',
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
    ScreenUtil.init(context, designSize: const Size(450, 850));
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            // Left side
            Container(
              width: 182.w,
             // height: 1000.h,
              color: const Color(0xFF222222),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 150.w,
                    //height: 200.h,
                    child: Padding(
                      padding: EdgeInsets.only(top: 2.h, left: 24.h,),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: _pickImage,
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage: _profileImage != null
                                    ? FileImage(_profileImage!)
                                    : AssetImage(
                                    AppImages.t11)
                                as ImageProvider,
                                radius: 60.h,
                              ),
                            ),
                            //SizedBox(height: 12.h, width: 12.w),
                            GestureDetector(
                              onTap: () => _editUserDetails(context),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "$name\n",
                                      style: TextStyle(
                                        fontFamily: GoogleFonts.inter().fontFamily,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24.sp,
                                        color: Colors.cyanAccent,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "$role",
                                      style: TextStyle(
                                        fontFamily: GoogleFonts.inter().fontFamily,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12.sp,
                                        color: Colors.white70,
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
                  ),
                  SizedBox(height: 10.h),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding:  EdgeInsets.only(
                          left: 16.w,
                          right: 16.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            GestureDetector(
                              onTap: ()=>_editContactDetails(context),
                                child: _buildContactSection()),
                            SizedBox(height: 0.h),
                            _buildSkillsSection(),
                            SizedBox(height: 0.h),
                            _buildLanguageSection(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Right side
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildProfileSection(),
                    _buildExperienceSection(),
                    buildExperienceSection2()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }

  Widget _buildVerticalSeparator() {
    return Container(
      height: 1.h,
      width: double.infinity,
      color: Colors.white70,
    );
  }

  Widget buildVerticalSeparator2() {
    return Container(
      height: 1.h,
      width: double.infinity,
      color: Colors.cyanAccent,
    );
  }

  Widget _buildContactSection() {
    return Container(
      width: 190.w,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Contact",
            style: TextStyle(
              fontFamily: GoogleFonts.inter().fontFamily,
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 3.h),
          _buildVerticalSeparator(),
          SizedBox(height: 5.h),
          _buildContactItem(Icons.email, email),
          SizedBox(height: 5.h),
          _buildContactItem(Icons.phone, phone),
          SizedBox(height: 5.h),
          _buildContactItem(Icons.language, website),
        ],
      ),
    );
  }

  Widget _buildSkillsSection() {
    return Container(
      width: 190.w,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Skills",
            style: TextStyle(
              fontFamily: GoogleFonts.inter().fontFamily,
              fontWeight: FontWeight.w700,
              fontSize: 14.sp,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 3.h),
          _buildVerticalSeparator(),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: () => _editSkillDialog(context, 0,
                      skillsData[0]['name'], skillsData[0]['proficiency']),
                  child: _buildSkillCircle(skillsData[0]['name'], skillsData[0]['proficiency'])),
              GestureDetector(
                  onTap: () => _editSkillDialog(context, 1,
                      skillsData[1]['name'], skillsData[1]['proficiency']),
                  child: _buildSkillCircle(skillsData[1]['name'], skillsData[1]['proficiency'])),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildSkillCircle(skillsData[2]['name'], skillsData[2]['proficiency']),
              _buildSkillCircle(skillsData[3]['name'], skillsData[3]['proficiency']),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageSection() {
    return Container(
      width: 190.w,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Languages",
            style: TextStyle(
              fontFamily: GoogleFonts.inter().fontFamily,
              fontWeight: FontWeight.w700,
              fontSize: 14.sp,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 3.h),
          _buildVerticalSeparator(),
          SizedBox(height: 10.h),
          Column(
            children: languages.map((item) {
              int index = languages.indexOf(item);
              return GestureDetector(
                  onTap: ()=>_editLanguagesDialog(context,index,item),
                  child: _buildExpertiseItem(item));
            }).toList(),
          )
        ],
      ),
    );
  }

  Widget _buildProfileSection() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Profile",
            style: TextStyle(
              fontFamily: GoogleFonts.inter().fontFamily,
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              color: Colors.cyanAccent,
            ),
          ),
          SizedBox(height: 3.h),
          buildVerticalSeparator2(),
          SizedBox(height: 8.h),
          GestureDetector(
            onTap: () => _editAbout(context),
            child: Text(
              about,
              style: TextStyle(
                fontFamily: GoogleFonts.inter().fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: Colors.black,
              ),

            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceSection() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Experience",
            style: TextStyle(
              fontFamily: GoogleFonts.inter().fontFamily,
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              color: Colors.cyanAccent,
            ),
          ),
          SizedBox(height: 3.h),
          buildVerticalSeparator2(),
          SizedBox(height: 8.h),
          ...experiences.map((experience) => Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: GestureDetector(
              onTap: () => _editExperienceItem(context, experience),
              child: _buildExperienceItem(
                jobTitle: experience['title'] ?? '',
                duration: experience['fromto'] ?? '',
                description: experience['description'] ?? '',
              ),
            ),
          )).toList(),
        ],
      ),
    );
  }


  Widget buildExperienceSection2() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Education",
            style: TextStyle(
              fontFamily: GoogleFonts.inter().fontFamily,
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
              color: Colors.cyanAccent,
            ),
          ),
          SizedBox(height: 3.h),
          buildVerticalSeparator2(),
          SizedBox(height: 8.h),
          ...education.map((experience) => Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: GestureDetector(
              onTap: () => _editEducationItem(context, experience),
              child: _buildExperienceItem(
                jobTitle: experience['degree'] ?? '',
                duration: experience['year'] ?? '',
                description: experience['institution'] ?? '',
              ),
            ),
          )).toList(),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String text) {
    return Container(
      width: 180.w,
      child: Row(
        children: [
          Icon(icon, color: Colors.cyanAccent, size: 16.w),
          SizedBox(width: 8.w),
          Text(
            text,
            style: TextStyle(
              fontFamily: GoogleFonts.inter().fontFamily,
              fontWeight: FontWeight.w300,
              fontSize: 12.sp,

              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExpertiseItem(String text) {
    return Row(
      children: [
        Icon(Icons.circle, size: 6.w, color: Colors.white),
        SizedBox(width: 8.w),
        Text(
          text.toUpperCase(),
          style: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildSkillCircle(String skillName, int percentage) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 30.w,
              backgroundColor: Colors.cyanAccent.withOpacity(0.1),
            ),
            CircularProgressIndicator(
              value: percentage / 100,
              strokeWidth: 10.w,
              backgroundColor: Colors.white.withOpacity(0.1),
              color: percentage >= 90
                  ? Colors.cyanAccent
                  : Colors.cyanAccent.withOpacity(0.5),
            ),
            CircleAvatar(
              radius: 20.w,
              backgroundColor: Colors.black,
              child: Text(
                skillName,
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

  Widget _buildExperienceItem({
    required String jobTitle,
    required String duration,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              jobTitle,
              style: TextStyle(
                fontFamily: GoogleFonts.inter().fontFamily,
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
                color: Colors.cyanAccent,
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              "| $duration",
              style: TextStyle(
                fontFamily: GoogleFonts.inter().fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: Colors.black,
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Text(
          description,
          style: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            fontWeight: FontWeight.w400,
            fontSize: 11.sp,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }

  Future<void> _editLanguagesDialog(BuildContext context, int index,
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
                decoration: InputDecoration(labelText: 'Name'),
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

  Future<void> _editSkillDialog(BuildContext context, int index,
      String currentName, int currentValue) async {
    TextEditingController nameController =
    TextEditingController(text: currentName);
    TextEditingController valueController =
    TextEditingController(text: currentValue.toString());

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
              TextField(
                controller: valueController,
                keyboardType: TextInputType.number,
                decoration:
                InputDecoration(labelText: 'Skill Value (00 - 100)'),
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
                int newValue = int.tryParse(valueController.text) ?? currentValue;

                setState(() {
                  skillsData[index] = {
                    'name': newName,
                    'proficiency': newValue,
                  };
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
                decoration: const InputDecoration(labelText: 'Company'),
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

  void _editUserDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController nameController =
        TextEditingController(text: name);
        final TextEditingController roleController =
        TextEditingController(text: role);

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
                  name = nameController.text;
                  role = roleController.text;
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

            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  phone = phoneController.text;
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
}
