import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Template5 extends StatefulWidget {
  const Template5({super.key});

  @override
  State<Template5> createState() => _Template5State();
}

class _Template5State extends State<Template5> {
  Color userNameColor = Colors.white;
  Color userRoleColor = Colors.white;
  String userName = 'John Carter';
  String userRole = 'Attorney';
  String email = 'contact@johncarter.com';
  String mobile = '+001 123 456 789';
  String socialMedia = '@johncarter';

  String about =
      "Lorem ipsum dolor sit amet consectetur adipiscing elit neque tempor malesuada adipiscing congue diam quis orci amet porttitor blandit amet nullam sit elit, purus blandit non ut non quam curabitur.";

  List<Map<String, String>> workExperience = [
    {
      'company': 'FACEBOOK',
      'duration': '2020 - 2021',
      'title': 'Lead Product Designer',
      'description':
          'Quis orci amet porttitor blandit amet nullam sit elit purus blandit non ut non.Quis orci amet porttitor blandit amet nullam sit elit purus blandit non ut non.',
    },
    {
      'company': 'GOOGLE',
      'duration': '2019 - 2020',
      'title': 'Lead Product Designer',
      'description':
      'Quis orci amet porttitor blandit amet nullam sit elit purus blandit non ut non.Quis orci amet porttitor blandit amet nullam sit elit purus blandit non ut non.',
    },
    {
      'company': 'TWITTER',
      'duration': '2018 - 2019',
      'title': 'Lead Product Designer',
      'description':
      'Quis orci amet porttitor blandit amet nullam sit elit purus blandit non ut non.Quis orci amet porttitor blandit amet nullam sit elit purus blandit non ut non.',
    },
  ];

  //list of skill
  List<String> skills = [
    'Leadership',
    'Communication',
    'Problem Solving',
    'Creativity',
    'Teamwork',
    'Problem Solving',
  ];

  List<String> Values = [
    'Excellence',
    'Trust',
    'Integrity',
    'Accountability',
  ];

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

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(686, 1450));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 650.w,
          //height: 842.h,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 250.w,
                    height: 812.h,
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: BoxDecoration(
                      color: Color(0xFF1B2530),

                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Profile Picture
                        Padding(
                          padding: EdgeInsets.only(top: 16.h),
                          child: CircleAvatar(
                            radius: 90.r,
                            backgroundColor: Color(0xFF00FF6A),
                            child: CircleAvatar(
                              radius: 85.r,
                              backgroundImage:
                                  AssetImage(AppImages.t5),
                            ),
                          ),
                        ),
                        SizedBox(height: 42.h),
                        // Contact Section
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: GestureDetector(
                            onTap: () => _editContactDetails(context),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildSectionHeader('CONTACT'),
                                SizedBox(height: 8.h),
                                _buildContactItem(
                                  icon: Icons.email_outlined,
                                  text: 'contact@johncarter.com',
                                ),
                                SizedBox(height: 8.h),
                                _buildContactItem(
                                  icon: Icons.phone_outlined,
                                  text: '(487) 806 - 7204',
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 42.h),
                        // Skills Section
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: GestureDetector(
                            onTap: () => _showSkillsEditDialog(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildSectionHeader('SKILLS'),
                                SizedBox(height: 8.h),
                                ...skills
                                    .map((skill) => _buildSkillItem(skill))
                                    .toList(),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 42.h),
                        // Values Section
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildSectionHeader('VALUES'),
                              SizedBox(height: 8.h),
                              ...Values.map((skill) => GestureDetector(
                                  onTap: () => _showValuesEditDialog(),
                                  child: _buildSkillItem(skill))).toList(),
                            ],
                          ),
                        ),
                        SizedBox(height: 42.h),
                        // Social Media Section
                        GestureDetector(
                          onTap: () => _editSocialMedia(context),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  socialMedia,
                                  style: GoogleFonts.mulish(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    _buildSocialIcon(Icons.facebook),
                                    _buildSocialIcon(
                                        Icons.youtube_searched_for),
                                    SvgPicture.asset(
                                      AppImages.whatsapp12,
                                      color: Colors.white,
                                    ),
                                    SvgPicture.asset(
                                      AppImages.linkedin,
                                      color: Colors.white,
                                    ),
                                    SvgPicture.asset(
                                      AppImages.instagram,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 400.w,
                    height: 812.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => _editUserDetails(context),
                          child: Container(
                            width: 400.w,
                            height: 120.h,
                            color: const Color(0xFF1B2530),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 25.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Title (Role)
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 25.w,
                                        height: 2.h,
                                        color: Colors.greenAccent,
                                      ),
                                      SizedBox(width: 8.w),
                                      Text(
                                        userRole,
                                        style: GoogleFonts.playfairDisplay(
                                          fontSize: 12.sp,
                                          color: userRoleColor.withOpacity(0.7), // Dynamically set role color
                                          letterSpacing: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8.h),
                                  // Name
                                  Text(
                                    userName,
                                    style: GoogleFonts.playfairDisplay(
                                      fontSize: 35.sp,
                                      color: userNameColor, // Dynamically set name color
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 400.w,
                          //height: 100.h,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25.w, vertical: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Title
                                Row(
                                  children: [
                                    Container(
                                      width: 25.w,
                                      height: 2.h,
                                      color: Colors.greenAccent,
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      'ABOUT ${userName.toUpperCase()}',
                                      style: GoogleFonts.playfairDisplay(
                                        fontSize: 16.sp,
                                        color: Color(
                                            0xFF333333), // Dark grey color
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),
                                // Description
                                GestureDetector(
                                  onTap: () => _editAboutDetail(context),
                                  child: Text(
                                    about,
                                    style: GoogleFonts.mulish(
                                      fontSize: 10.sp,
                                      color: Color(
                                          0xFF666666), // Lighter grey color
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 400.w,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25.w, vertical: 16.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Section Title
                                Row(
                                  children: [
                                    Container(
                                      width: 25.w,
                                      height: 2.h,
                                      color: Colors.greenAccent,
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      'WORK EXPERIENCE',
                                      style: GoogleFonts.playfairDisplay(
                                        fontSize: 16.sp,
                                        color: Color(
                                            0xFF333333), // Dark grey color
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),
                                ...workExperience
                                    .map((experience) => GestureDetector(
                                          onTap: () => _editExperienceItem(
                                              context, experience),
                                          child: Column(
                                            children: [
                                              _buildExperienceItem(
                                                company: experience['company']!,
                                                position: experience['title']!,
                                                duration: experience['duration']!,
                                                description:
                                                    experience['description']!,
                                              ),
                                              SizedBox(height: 25.h),
                                            ],
                                          ),
                                        ))
                                    .toList(),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 400.w,
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25.w, vertical: 0.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Section Title
                                Row(
                                  children: [
                                    Container(
                                      width: 25.w,
                                      height: 2.h,
                                      color: Colors.greenAccent,
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      'EDUCATION',
                                      style: GoogleFonts.playfairDisplay(
                                        fontSize: 16.sp,
                                        color: Color(
                                            0xFF333333), // Dark grey color
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.h),

                                // Education Item 1
                                ...education
                                    .map((edu) => GestureDetector(
                                          onTap: () =>
                                              _editEducationItem(context, edu),
                                          child: Column(
                                            children: [
                                              _buildEducationItem(
                                                degree: edu['degree']!,
                                                institution: edu['institution']!,
                                                duration: edu['years']!,
                                              ),

                                              SizedBox(height: 25.h),
                                            ],
                                          ),
                                        ))
                                    .toList(),
                                SizedBox(height: 8.h),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
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
                setState(() {
                  skills = skillsController.text
                      .split(',')
                      .map((s) => s.trim())
                      .where((s) => s.isNotEmpty) // filter out any empty skills
                      .toList();
                });
                Navigator.pop(context, skills);
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

  Future<List<String>?> _showValuesEditDialog() async {
    final skillsController = TextEditingController(text: Values.join(', '));

    return await showDialog<List<String>>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Values'),
          content: TextField(
            controller: skillsController,
            decoration: InputDecoration(
              labelText: 'Values (comma separated)',
            ),
            maxLines: 5,
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  Values = skillsController.text
                      .split(',')
                      .map((s) => s.trim())
                      .where((s) => s.isNotEmpty) // filter out any empty skills
                      .toList();
                });
                Navigator.pop(context, skills);
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

  void _editUserDetails(BuildContext context) {
    TextEditingController nameController = TextEditingController(text: userName);
    TextEditingController roleController = TextEditingController(text: userRole);
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
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              titlePadding: EdgeInsets.only(top: 10, right: 20),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Edit User Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
                                  ? Icon(Icons.check, color: Colors.white, size: 16)
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
                                  ? Icon(Icons.check, color: Colors.white, size: 16)
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

  void _editAboutDetail(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController about1Controller =
            TextEditingController(text: about);

        return AlertDialog(
          title: const Text('Edit User Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: about1Controller,
                decoration: const InputDecoration(labelText: 'About'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  about = about1Controller.text;
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
    required String degree,
    required String institution,
    required String duration,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          degree,
          style: GoogleFonts.mulish(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
        SizedBox(height: 4.h),
        Row(
          children: [
            Text(
              institution,
              style: GoogleFonts.mulish(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              '|',
              style: GoogleFonts.mulish(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              duration,
              style: GoogleFonts.mulish(
                fontSize: 12.sp,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildExperienceItem({
    required String company,
    required String position,
    required String duration,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          company,
          style: GoogleFonts.mulish(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.greenAccent,
          ),
        ),
        SizedBox(height: 4.h),
        Row(
          children: [
            Text(
              position.toUpperCase(),
              style: GoogleFonts.mulish(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              '|',
              style: GoogleFonts.mulish(
                fontSize: 12.sp,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              duration,
              style: GoogleFonts.mulish(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Text(
          description,
          style: GoogleFonts.mulish(
            fontSize: 10.sp,
            color: Colors.grey[600],
            height: 1.5,
          ),
        ),
      ],
    );
  }
}

Widget _buildSectionHeader(String title) {
  return Row(
    children: [
      Container(
        width: 25.w,
        height: 2.h,
        color: Colors.greenAccent,
      ),
      SizedBox(width: 8.w),
      Text(
        title,
        style: GoogleFonts.playfairDisplay(
          fontSize: 15.sp,
          color: Colors.white,
        ),
      ),
    ],
  );
}

Widget _buildContactItem({required IconData icon, required String text}) {
  return Row(
    children: [
      Icon(icon, color: Colors.white, size: 20.sp),
      SizedBox(width: 8.w),
      Expanded(
        child: Text(
          text,
          style: GoogleFonts.mulish(
            fontSize: 12.sp,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}

Widget _buildSkillItem(String skill) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4.h),
    child: Row(
      children: [
        Icon(Icons.circle, color: Colors.white, size: 5.sp),
        SizedBox(width: 8.w),
        Text(
          skill,
          style: GoogleFonts.mulish(
            fontSize: 12.sp,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}

Widget _buildSocialIcon(IconData icon) {
  return Icon(
    icon,
    color: Colors.white,
    size: 25.sp,
  );
}
