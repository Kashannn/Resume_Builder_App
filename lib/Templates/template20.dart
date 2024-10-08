import 'dart:io';

import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Template20 extends StatefulWidget {
  const Template20({super.key});

  @override
  State<Template20> createState() => _Template20State();
}

class _Template20State extends State<Template20> {
  Color userNameColor = Color(0xFF5BBBFF);
  Color userRoleColor = Colors.lightBlueAccent;
  String userName = 'John Deo';
  String userRole = 'WEB DEVELOPER';
  String phone = '+001 123 456 789';
  String email = 'contact@john.com';
  String address = 'New York, USA';

  final List<Map<String, dynamic>> skillsData = [
    {'name': 'Figma - XD', 'proficiency': 0.8},
    {'name': 'Photoshop', 'proficiency': 0.7},
    {'name': 'Illustrator', 'proficiency': 0.6},
    {'name': 'Indesign', 'proficiency': 0.5},
    {'name': 'Word', 'proficiency': 0.4},
    {'name': 'Power Point', 'proficiency': 0.3},
  ];

  String portfolio = 'www.johnmoore.com';

  String about =
      "A student majoring in Advertising and UI / UX design. In this CV is my design and marketing experience. Things I achieve through projects and works. Therefore, I want a job starting UI/UX as a career to stabilize and enhance my competence.";

  final List<Map<String, String>> education = [
    {
      'year': '2017 - 2020',
      'degree': 'Master of Media',
      'institution': 'Wardiere University',
    },
    {
      'year': '2012-2015',
      'degree': 'Bachelor of Arts',
      'institution': 'Wardiere University',
    },
  ];

  final List<Map<String, String>> experiences = [
    {
      'title': 'Marketing Manager',
      'details': 'Maicogroup Co. Ltd ',
      'fromto': '2021 - 2022',
      'description':
          'Responsible for developing marketing strategies and overseeing their implementation across various media channels.',
    },
    {
      'title': 'Product Manager',
      'details': 'Tech Innovations Inc.',
      'fromto': '2018 - 2020',
      'description':
          'Managed the development and launch of new products, ensuring alignment with market trends and customer needs.',
    },
    // Add more experience entries as needed
  ];

  List<String> languages = [
    'English',
    'Urdu',
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
    ScreenUtil.init(context, designSize: const Size(595, 2050));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 595.w,
          //height: 842.h,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: 595.w,
                //height: 248.h,
                // color: Color(0xFFF8F6FA
                // ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 200.w,
                      //height: 200.h,
                      decoration: BoxDecoration(
                        color: Color(0xFF1A1B1C),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(150.r),
                          topRight: Radius.circular(150.r),
                        ),
                      ),
                      child: Center(
                        child: Container(
                          width: 130.w,
                          // height: 200.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            color: Colors.black,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(130.r),
                            child: _profileImage == null
                                ? GestureDetector(
                                    onTap: _pickImage,
                                    child: ClipOval(
                                      child: Image.asset(
                                        AppImages.profilePicture,
                                        fit: BoxFit.cover,
                                        height: 400.h,
                                      ),
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: _pickImage,
                                    child: ClipOval(
                                      child: Image.file(
                                        _profileImage!,
                                        fit: BoxFit.cover,
                                        height: 400.h,
                                      ),
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 280.w,
                      //height: 248.h,
                      padding: EdgeInsets.only(right: 25.w),
                      // color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Name
                          GestureDetector(
                            onTap: () => _editUserDetails(context),
                            child: Column(
                              children: [
                                Text(
                                  userName,
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28.sp,
                                    color:
                                        userNameColor, // Apply dynamic name color
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                // UI Designer Button
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4.h, horizontal: 12.w),
                                  decoration: BoxDecoration(
                                    color:
                                        userRoleColor, // Apply dynamic role color
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  child: Text(
                                    userRole,
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.inter().fontFamily,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16.h),
                              ],
                            ),
                          ),
                          // Profile Text
                          Text(
                            "PROFILE",
                            style: TextStyle(
                              fontFamily: GoogleFonts.inter().fontFamily,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Container(
                            width: 40.w,
                            height: 2.h,
                            color: Colors.purple,
                          ),
                          SizedBox(height: 8.h),
                          // Description
                          GestureDetector(
                            onTap: () => _editAbout(context),
                            child: Text(
                              about,
                              style: TextStyle(
                                fontFamily: GoogleFonts.inter().fontFamily,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.sp,
                                color: Color(0xFF4D4D4D),
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 1.w,
                  ),
                  Container(
                    // color: Colors.black12,
                    width: 240.w,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 200.w,
                          height: 250.h,
                          color: Color(
                              0xFF1A1B1C), // Background color of the container
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.h, horizontal: 12.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Section Title
                                Text(
                                  'EDUCATION',
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.inter()
                                        .fontFamily, // Ensure GoogleFonts.inter().fontFamily font is added
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                // Purple underline
                                Container(
                                  width: 40.w,
                                  height: 2.h,
                                  color: Color(
                                      0xFF8A2BE2), // Purple color for the underline
                                ),
                                SizedBox(height: 8.h),
                                // Education Details
                                ...education.map((item) {
                                  return GestureDetector(
                                    onTap: () =>
                                        _editEducationItem(context, item),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          bottom:
                                              16.h), // Adjust spacing as needed
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item['degree']!,
                                            style: TextStyle(
                                              fontFamily: GoogleFonts.inter()
                                                  .fontFamily,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            item['institution']!,
                                            style: TextStyle(
                                              fontFamily: GoogleFonts.inter()
                                                  .fontFamily,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Text(
                                            item['year']!,
                                            style: TextStyle(
                                              fontFamily: GoogleFonts.inter()
                                                  .fontFamily,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          width: 250.w,
                          // height: 350.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 12.h, horizontal: 20.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Section Title
                                Text(
                                  'EXPERTISE',
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                // Blue underline
                                Container(
                                  width: 30.w,
                                  height: 2.h,
                                  color: Colors.blue, // Blue underline
                                ),
                                SizedBox(height: 8.h),
                                // Skill bars
                                ...skillsData.map((skill) {
                                  final int index = skillsData.indexOf(skill);
                                  return GestureDetector(
                                    onTap: () => _editSkillDialog(
                                        context,
                                        index,
                                        skill['name'],
                                        skill['proficiency']),
                                    child: _buildSkillBar(
                                        skill['name'], skill['proficiency']),
                                  );
                                }).toList(),

                                // Contact Information
                                GestureDetector(
                                  onTap: () => _editContactDetails(context),
                                  child: Column(
                                    children: [
                                      _buildContactItem(
                                          Icons.phone, 'Phone', phone),
                                      _buildContactItem(
                                          Icons.email, 'Email', email),
                                      _buildContactItem(Icons.location_on,
                                          'Location', address),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 300.w,
                    // height: 500.h,
                    // height: 500.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 300.w,
                          //  height: 207.h,
                          padding: EdgeInsets.all(16.w),
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Work Experience Title
                              Text(
                                "WORK EXPERIENCE",
                                style: TextStyle(
                                  fontFamily: GoogleFonts.inter().fontFamily,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              // Blue Divider
                              Container(
                                width: 40.w,
                                height: 2.h,
                                color: Colors.blue,
                              ),
                              SizedBox(height: 16.h),
                              // Marketing Title
                              ...experiences.map((experience) {
                                return GestureDetector(
                                  onTap: () =>
                                      _editExperienceItem(context, experience),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            16.h), // Adjust spacing as needed
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          experience['title']!,
                                          style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.inter().fontFamily,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 4.h,
                                                  horizontal: 8.w),
                                              decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(4.r),
                                              ),
                                              child: Text(
                                                experience['fromto']!,
                                                style: TextStyle(
                                                  fontFamily:
                                                      GoogleFonts.inter()
                                                          .fontFamily,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.sp,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 8.w),
                                            Text(
                                              experience['details']!,
                                              style: TextStyle(
                                                fontFamily: GoogleFonts.inter()
                                                    .fontFamily,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11.sp,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 8.h),
                                        Text(
                                          experience['description']!,
                                          style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.inter().fontFamily,
                                            fontSize: 12.sp,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                            ],
                          ),
                        ),
                        Container(
                          width: 300.w,
                          // height: 60.h,
                          color: Colors.transparent,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 16.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Portfolio Link Title
                                  Text(
                                    "PORTFOLIO LINK",
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.inter().fontFamily,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  // Blue Divider
                                  Container(
                                    width: 40.w,
                                    height: 2.h,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(height: 8.h),
                                  // Portfolio Link Text
                                  GestureDetector(
                                    onTap: () => _editPortfolio(context),
                                    child: Text(
                                      portfolio,
                                      style: TextStyle(
                                        fontFamily:
                                            GoogleFonts.inter().fontFamily,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        10.verticalSpace,
                        Container(
                          width: 200.w,
                          //  height: 105.h,
                          color: Colors.transparent,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 16.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Interests Title
                                  Text(
                                    "INTERESTS",
                                    style: TextStyle(
                                      fontFamily:
                                          GoogleFonts.inter().fontFamily,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 4.h),
                                  // Blue Divider
                                  Container(
                                    width: 40.w,
                                    height: 2.h,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(height: 8.h),
                                  // Interests Icons Row
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Icon(Icons.travel_explore,
                                              size: 24.w, color: Colors.blue),
                                          SizedBox(height: 4.h),
                                          Text(
                                            "Travel",
                                            style: TextStyle(
                                              fontFamily: GoogleFonts.inter()
                                                  .fontFamily,
                                              fontSize: 12.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      8.horizontalSpace,
                                      Column(
                                        children: [
                                          Icon(Icons.headset,
                                              size: 24.w, color: Colors.blue),
                                          SizedBox(height: 4.h),
                                          Text(
                                            "Music",
                                            style: TextStyle(
                                              fontFamily: GoogleFonts.inter()
                                                  .fontFamily,
                                              fontSize: 12.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      8.horizontalSpace,
                                      Column(
                                        children: [
                                          Icon(Icons.edit,
                                              size: 24.w, color: Colors.blue),
                                          SizedBox(height: 4.h),
                                          Text(
                                            "Writing",
                                            style: TextStyle(
                                              fontFamily: GoogleFonts.inter()
                                                  .fontFamily,
                                              fontSize: 12.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      8.horizontalSpace,
                                      Column(
                                        children: [
                                          Icon(Icons.sports_esports,
                                              size: 24.w, color: Colors.blue),
                                          SizedBox(height: 4.h),
                                          Text(
                                            "Gaming",
                                            style: TextStyle(
                                              fontFamily: GoogleFonts.inter()
                                                  .fontFamily,
                                              fontSize: 12.sp,
                                              color: Colors.black,
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
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Container(
                            width: 200.w,
                            //height: 92.h,
                            color: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Expertise Title
                                Text(
                                  "EXPERTISE",
                                  style: TextStyle(
                                    fontFamily: GoogleFonts.inter().fontFamily,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                // Blue Divider
                                Container(
                                  width: 40.w,
                                  height: 2.h,
                                  color: Colors.blue,
                                ),
                                SizedBox(height: 8.h),
                                // Expertise Levels
                                Column(
                                  children: languages.map((skill) {
                                    int index = languages.indexOf(skill);
                                    return GestureDetector(
                                      onTap: () => _editLanguages(
                                        context,
                                        index,
                                        skill,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 8.h),
                                        child: Row(
                                          children: [
                                            Text(
                                              skill,
                                              style: TextStyle(
                                                fontFamily: GoogleFonts.inter()
                                                    .fontFamily,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.sp,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(width: 8.w),
                                            Expanded(
                                              child: LinearProgressIndicator(
                                                value: .9,
                                                backgroundColor:
                                                    Colors.grey[300],
                                                color: Colors.blue,
                                                minHeight: 2.h,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
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

  void _editPortfolio(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController nameController =
            TextEditingController(text: portfolio);

        return AlertDialog(
          title: const Text('Edit Portfolio'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Portfolio'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  portfolio = nameController.text;
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

  Future<void> _editSkillDialog(BuildContext context, int index,
      String currentName, double currentValue) async {
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
                    InputDecoration(labelText: 'Skill Value (0.0 - 1.0)'),
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
                double newValue =
                    double.tryParse(valueController.text) ?? currentValue;

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

  void _editContactDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController phoneController =
            TextEditingController(text: phone);
        final TextEditingController emailController =
            TextEditingController(text: email);
        final TextEditingController addressController =
            TextEditingController(text: address);

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
                controller: addressController,
                decoration: const InputDecoration(labelText: 'Address'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  phone = phoneController.text;
                  email = emailController.text;
                  address = addressController.text;
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

  Widget _buildSkillBar(String skill, double level) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            skill,
            style: TextStyle(
              fontFamily: GoogleFonts.inter().fontFamily,
              fontSize: 14.sp,
              color: Colors.black,
            ),
          ),
          Container(
            width: 100.w,
            child: LinearProgressIndicator(
              value: level,
              backgroundColor: Colors.grey[300],
              color: Colors.blue,
              minHeight: 4.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String title, String detail) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.blue,
            size: 18.sp,
          ),
          SizedBox(width: 8.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                detail,
                style: TextStyle(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  fontSize: 14.sp,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
