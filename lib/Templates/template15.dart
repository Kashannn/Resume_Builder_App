import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/constant/app_images_constant.dart';

class Template15 extends StatefulWidget {
  const Template15({super.key});

  @override
  State<Template15> createState() => _Template15State();
}

class _Template15State extends State<Template15> {

  String userName = 'Alex Moore';
  String userRole = 'Business Coach';
  String socialMedia = '@alexmoore';
  String email = 'contact@alexmoore.com';
  String mobile = '+001 123 456 789';
  String website = 'www.alexmoore.com';
  String about = "Lorem ipsum dolor sit amet consectetur adipiscing elit neque tempor malesuada adipiscing congue diam quis orci amet porttitor blandit amet nullam sit elit, purus blandit non ut non quam curabitur.";

  List<String> services = [
    'Business Consulting',
    'Growth Consulting',
    'Sales Consulting',
    'Hiring Consulting',
    'Management Consulting',
    'Finance Consulting',
  ];

  List<String> languages = [
    'URDU',
    'ENGLISH',
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
    ScreenUtil.init(context, designSize: const Size(600, 1000));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 595.w,
          //height: 842.h,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 555.w,
                height: 90.h,
                decoration: BoxDecoration(
                  color: Color(0xFF1B1F24),
                  borderRadius: BorderRadius.circular(90.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 25.w, top: 0.h),
                            child: GestureDetector(
                              onTap: _pickImage,
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage: _profileImage != null
                                    ? FileImage(_profileImage!)
                                    : AssetImage(
                                    AppImages.profilePicture15)
                                as ImageProvider,
                                radius: 40.h,
                              ),
                            ),
                          ),
                          SizedBox(width: 16.w),
                          GestureDetector(
                            onTap: ()=> _editUserDetails(context),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '— $userRole',
                                  style: GoogleFonts.dmSans(
                                    fontSize: 12.sp,
                                    color: Color(
                                        0xFFFFC107), // Yellow color for 'BUSINESS COACH'
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  userName,
                                  style: GoogleFonts.dmSans(
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Signature
                    SvgPicture.asset(
                      AppImages.signature15,
                      width: 40.w,
                      height: 50.h,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 210.w,
                    //height: 660.h,
                    padding:
                        EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
                    color: Color(0xFFE5E5E5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Contact Section
                        Text(
                          "CONTACT",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => _editContactDetails(context),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  Icon(Icons.email, color: Colors.black, size: 16.w),
                                  SizedBox(width: 8.w),
                                  Text(
                                    "EMAIL",
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                email,
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Row(
                                children: [
                                  Icon(Icons.phone, color: Colors.black, size: 16.w),
                                  SizedBox(width: 8.w),
                                  Text(
                                    "PHONE",
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4.h),
                              Text(
                               mobile,
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Row(
                                children: [
                                  Icon(Icons.language,
                                      color: Colors.black, size: 16.w),
                                  SizedBox(width: 8.w),
                                  Text(
                                    "WEB",
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.sp,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                website,
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              // Follow Me Section
                              Text(
                                "FOLLOW ME",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                socialMedia,
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 16.w),
                                  SvgPicture.asset(AppImages.twitter,
                                      width: 10.w, height: 10.h, color: Colors.black),
                                  SizedBox(width: 16.w),
                                  SvgPicture.asset(AppImages.facebook,
                                      width: 10.w, height: 10.h, color: Colors.black),
                                  SizedBox(width: 16.w),
                                  SvgPicture.asset(AppImages.instagram,
                                      width: 10.w, height: 10.h, color: Colors.black),
                                  SizedBox(width: 16.w),
                                  SvgPicture.asset(AppImages.linkedin,
                                      width: 10.w, height: 10.h, color: Colors.black),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        // My Services Section
                        Text(
                          "MY SERVICES",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (var i = 0; i < services.length; i++)
                            GestureDetector(
                              onTap: () => _editServices(context, i, services[i]), // Passing the index and service
                              child: _buildServiceItem(services[i]),
                            ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                        // Languages Section
                        Text(
                          "LANGUAGES",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var i = 0; i < languages.length; i++)
                      GestureDetector(
                        onTap: ()=>_editLanguages(context, i, languages[i]),
                          child: _buildLanguageItem(languages[i])),
                  ],
                ),
                ],
                    ),
                  ),
                  Container(
                    width: 350.w,
                    //height: 660.h,
                    padding:
                        EdgeInsets.only(bottom: 70),
                    color: Colors
                        .transparent, // Adjust the color or make it transparent
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // About Me Section
                        Text(
                          "ABOUT ME",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        GestureDetector(
                          onTap: ()=> _editAbout(context),
                          child: Text(
                            about,
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 11.sp,
                              color: Colors.grey[800],
                            ),
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Divider(color: Colors.grey[400]),

                        // Education Section
                        Text(
                          "EDUCATION",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (var item in education)
                            GestureDetector(
                              onTap: () => _editEducationItem(context, item),
                              child: _buildEducationItem(
                                item['institution'] ?? '',
                                item['year'] ?? '',
                                item['degree'] ?? '',
                              ),
                            ),
                        ],
                      ),
                      SizedBox(height: 11.h),
                        Divider(color: Colors.grey[400]),


                        // Work Experience Section
                        Text(
                          "WORK EXPERIENCE",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                        ),
                    Column(
                      children: [
                        SizedBox(height: 2.h),
                        for (var experience in workExperience)
                          Padding(
                            padding: EdgeInsets.only(bottom: 2.h),
                            child: GestureDetector(
                              onTap: () => _editExperience(experience),
                              child: _buildExperienceItem(
                                companyName: experience['title'] ?? '', // Replace with actual company name if available
                                duration: "${experience['from']} / ${experience['to']}",
                                description: experience['description'] ?? '',
                              ),
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
    );
  }

  Widget _buildServiceItem(String service) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        children: [
          Icon(Icons.circle, size: 6.w, color: Colors.yellow),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              service,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageItem(String language) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        children: [
          Icon(Icons.circle, size: 6.w, color: Colors.yellow),
          SizedBox(width: 8.w),
          Text(
            language,
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEducationItem(
      String institution, String duration, String degree) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              institution,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w700,
                fontSize: 9.sp,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 5.w),
            Text(
              "–",
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w400,
                fontSize: 9.sp,
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              duration,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w400,
                fontSize: 11.sp,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h), // Adjust the spacing between rows
        Text(
          degree,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w700,
            fontSize: 9.sp,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildExperienceItem({
    required String companyName,
    required String duration,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          companyName,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w700,
            fontSize: 12.sp,
            color: Colors.black,
          ),
        ),

        SizedBox(height: 4.h),
        Text(
          duration,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          description,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w400,
            fontSize: 10.sp,
            color: Colors.grey[800],
          ),
        ),
      ],
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
        TextEditingController(text: mobile);
        final TextEditingController emailController =
        TextEditingController(text: email);
        final TextEditingController websiteController =
        TextEditingController(text: website);
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
                controller: websiteController,
                decoration: const InputDecoration(labelText: 'Website'),
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
                  website = websiteController.text;
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


  Future<void> _editServices(BuildContext context, int index,
      String currentName) async {
    TextEditingController nameController =
    TextEditingController(text: currentName);
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Service'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Service Name'),
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
                  services[index] = newName;

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

}
