import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/constant/app_images_constant.dart';

class Template14 extends StatefulWidget {
  const Template14({super.key});

  @override
  State<Template14> createState() => _Template14State();
}

class _Template14State extends State<Template14> {
  Color userNameColor = Colors.black;
  Color userRoleColor = Colors.white;
  String userName = 'Johnny Carter';
  String userRole = 'Photographer';
  String address = '123 Anywhere St., Any City';
  String email = 'hello@reallygreatsite.com';
  String phoneNumber = '+123-456-7890';
  String facebook = 'www.facebook.com';
  String website = 'www.mysite.com';
  String aboutMe = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.';

  String refence = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.';


  List<String> languages = [
    'French',
    'Spanish',
    'English',
    'Chinese',
    'Arabic',
  ];

  List<Map<String, String>> experiences = [
    {
      'title': 'JOB POSITION',
      'details': '2010 - 2014',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
    },
    {
      'title': 'JOB POSITION',
      'details': '2010 - 2014',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
    },
  ];


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
    ScreenUtil.init(context, designSize: const Size(650, 1350));
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: 650.w,
              height: 842.h,
              color: Colors.white,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 70.h, left: 20.w),
                        child: Container(
                          width: 250.w,
                          //height: 600.h,
                          // color: Colors.yellow,
                          child: Stack(
                            children: [
                              SvgPicture.asset(
                                AppImages.pictemplate14,
                                //width: 400.w,
                                height: 750.h,
                                fit: BoxFit.cover,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.w,
                                      vertical: 10.h,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        15.verticalSpace,
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              GestureDetector(
                                                onTap: _pickImage,
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.transparent,
                                                  backgroundImage: _profileImage != null
                                                      ? FileImage(_profileImage!)
                                                      : AssetImage(
                                                      AppImages.t14)
                                                  as ImageProvider,
                                                  radius: 80.h,
                                                ),
                                              ),
                                              SizedBox(height: 10.h),
                                          GestureDetector(
                                            onTap: () => _editUserDetails(context),
                                            child: Column(
                                              children: [
                                                Text(
                                                  userName,
                                                  style: GoogleFonts.inter(
                                                    fontSize: 25.sp,
                                                    color: userNameColor, // Apply dynamic name color
                                                  ),
                                                ),
                                                Text(
                                                  userRole,
                                                  style: GoogleFonts.inter(
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: userRoleColor, // Apply dynamic role color
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 20.h),
                                        Padding(
                                          padding: EdgeInsets.only(right: 25.w),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              GestureDetector(
                                                onTap: ()=> _editContactDetails(context),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    _buildSectionHeader('CONTACT'),
                                                    SizedBox(height: 10.h),
                                                    _buildContactItem(Icons.home,
                                                        address),
                                                    _buildDivider(),
                                                    _buildContactItem(Icons.email,
                                                        email),
                                                    _buildDivider(),
                                                    _buildContactItem(Icons.phone,
                                                        phoneNumber),
                                                    _buildDivider(),
                                                    _buildContactItem(Icons.language,
                                                        website),
                                                    SizedBox(height: 20.h),
                                                    _buildSectionHeader('FOLLOW ME'),
                                                    SizedBox(height: 10.h),
                                                    _buildContactItem(Icons.facebook,
                                                        facebook),
                                                    _buildContactItem(
                                                        Icons.youtube_searched_for,
                                                       website),
                                                    SizedBox(height: 20.h),
                                                  ],
                                                ),
                                              ),
                                              _buildSectionHeader('REFERENCE'),
                                              SizedBox(height: 10.h),
                                              _buildReference(),
                                            ],
                                          ),
                                        )
                                      ],
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
                  SizedBox(
                    width: 325.w,
                    height: 790.h,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 45.h,
                        ),
                        SizedBox(
                          width: 325.w,
                          //height: 100.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'LANGUAGES',
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: languages.map((language) {
                                  int index = languages.indexOf(language);
                                  return GestureDetector(
                                    onTap: () => _editLanguages(context, index, language),
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 8.h),
                                      child: _buildLanguageSkill(language),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 325.w,
                          //height: 150.h,
                          padding: EdgeInsets.all(10.w),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 25.h,
                                decoration: BoxDecoration(
                                  color: Colors
                                      .black, // The black rounded rectangle
                                  borderRadius:
                                  BorderRadius.circular(25.r),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 25.w,
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFAE84E9), // The purple circle
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 25.h,
                                        decoration: BoxDecoration(
                                          color: Colors
                                              .black, // The black rounded rectangle
                                          borderRadius:
                                              BorderRadius.circular(25.r),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.w),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'PROFILE',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              GestureDetector(
                                onTap: ()=> _editAbout(context),
                                child: Text(
                                  aboutMe,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                             // SizedBox(height: 10.h),

                            ],
                          ),
                        ),
                        Container(
                          width: 325.w,
                          //height: 255.h,
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 25.h,
                                decoration: BoxDecoration(
                                  color: Colors
                                      .black, // The black rounded rectangle
                                  borderRadius:
                                  BorderRadius.circular(25.r),
                                ),

                                child: Row(
                                  children: [
                                    Container(
                                      width: 25.w,
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFAE84E9), // The purple circle
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 25.h,
                                        decoration: BoxDecoration(
                                          color: Colors
                                              .black, // The black rounded rectangle
                                          borderRadius:
                                              BorderRadius.circular(25.r),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.w),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'WORK EXPERIENCE',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: experiences.map((experience) {
                          return GestureDetector(
                            onTap: ()=> _editExperienceItem(context,experience),
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10.h),
                              child: _buildExperienceItem(
                                title: experience['title']!,
                                year: experience['details']!,
                                description: experience['description']!,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                              SizedBox(height: 10.h),

                            ],
                          ),
                        ),
                        Container(
                          width: 325.w,
                          //height: 200.h,
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 25.h,
                                decoration: BoxDecoration(
                                  color: Colors
                                      .black, // The black rounded rectangle
                                  borderRadius:
                                  BorderRadius.circular(25.r),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 25.w,
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFAE84E9), // The purple circle
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 25.h,
                                        decoration: BoxDecoration(
                                          color: Colors
                                              .black, // The black rounded rectangle
                                          borderRadius:
                                              BorderRadius.circular(25.r),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.w),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'EDUCATION',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: education.map((edu) {
                        return GestureDetector(
                          onTap: ()=> _editEducationItem(context,edu),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildEducationItem(
                                title: edu['degree']!,
                                year: edu['year']!,
                                description: edu['institution']!,
                              ),
                              SizedBox(height: 10.h),
                              Divider(color: Colors.black),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SvgPicture.asset(
                AppImages.template141,
                width: 595.w,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SvgPicture.asset(
                AppImages.template142,
                width: 595.w,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
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

  void _editAbout(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController aboutController =
        TextEditingController(text: aboutMe);


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
                  aboutMe = aboutController.text;
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


  void _editContactDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController phoneController =
        TextEditingController(text: phoneNumber);
        final TextEditingController emailController =
        TextEditingController(text: email);
        final TextEditingController addressController =
        TextEditingController(text: address);
        final TextEditingController webisteController =
        TextEditingController(text: website);
        final TextEditingController facebookController =
        TextEditingController(text: facebook);

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
              TextField(
                controller: webisteController,
                decoration: const InputDecoration(labelText: 'Website'),
              ),
              TextField(
                controller: facebookController,
                decoration: const InputDecoration(labelText: 'Facebook'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {

                  phoneNumber = phoneController.text;
                  website = webisteController.text;
                  facebook = facebookController.text;
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

  void _editReference(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController nameController =
        TextEditingController(text: refence);

        return AlertDialog(
          title: const Text('Edit Reference'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Reference'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  refence = nameController.text;
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
                          Colors.black,
                          Colors.red,
                          Colors.green,
                          Colors.yellow,
                          Colors.teal,
                          Colors.blue,
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
                                  ? Icon(Icons.check, color: Colors.white, size: 16)
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
                          Colors.white,
                          Colors.black,
                          Colors.red,
                          Colors.green,
                          Colors.yellow,
                          Colors.teal,
                          Colors.blue,
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
                    setState(() {
                      userName = nameController.text;
                      userRole = roleController.text;
                      userNameColor = tempUserNameColor; // Save selected name color
                      userRoleColor = tempUserRoleColor; // Save selected role color
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


  Widget _buildEducationItem(
      {required String title,
      required String description,
      required String year}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 40.w,
          child: Text(
            year,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Color(0xFFAE84E9),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                description,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildExperienceItem(
      {required String title,
      required String description,
      required String year}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 40.w,
          child: Text(
            year,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Color(0xFFAE84E9),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                description,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLanguageSkill(String language) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircularProgressIndicator(
              value: 0.8,
              strokeWidth: 4.w,
              backgroundColor: Colors.grey.shade300,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ),
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: Color(0xFFAE84E9),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Text(
          language,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Container(
      height: 25.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
      ),
      width: 180.w,
      child: Row(
        children: [
          Container(
            width: 25.w,
            height: 25.h,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Container(

              height: 25.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,

                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20.sp, color: Colors.black),
        SizedBox(width: 10.w),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: 12.sp,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Divider(color: Colors.white, height: 20.h, thickness: 1.w);
  }

  Widget _buildReference() {
    return GestureDetector(
      onTap: () => _editReference(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            refence,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
            ),
          ),
          SizedBox(height: 5.h),
        ],
      ),
    );
  }
}
