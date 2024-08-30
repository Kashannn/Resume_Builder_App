import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/constant/app_images_constant.dart';

class Template3 extends StatefulWidget {
  const Template3({super.key});

  @override
  State<Template3> createState() => _Template3State();
}

class _Template3State extends State<Template3> {
  String userName = 'John moore';
  String role = 'digital designer';
  String socialMedia = '@johnmoore';
  String email = 'contact@john.com';
  String mobile = '+001 123 456 789';
  String website = 'www.johnmoore.com';

  List<Map<String, String>> education = [
    {
      'year': '2017 - 2020',
      'degree': 'Enter Masters Degree',
      'institution': ' Institute',
    },
    {
      'year': '2012-2015',
      'degree': 'Enter Bachelor Degree',
      'institution': 'Institute',
    },
  ];

  //expertise
  List<Map<String, String>> expertiseData = [
    {
      'name': 'Branding',
    },
    {
      'name': 'Web Design',
    },
    {
      'name': 'UI/UX Design',
    },
    {
      'name': 'Web Development',
    },
  ];

  //skills
  List<Map<String, String>> skillsData = [
    {
      'name': 'Lead & Strategy',
    },
    {
      'name': 'Innovative',
    },
    {
      'name': 'Team Work',
    },
    {
      'name': 'Goal Oriented',
    },
  ];

  String about = "Lorem ipsum dolor sit amet consectetur adipiscing elit scelerisque sit senectus maecenas donec amet viverra Aliquam aenean eget gravida vitae nunc vitae sit.";

  List<Map<String, String>> experiences = [
    {
      'title': 'JOB POSITION / TITLE HERE',
      'details': 'Company Name  - 2010 - 2014',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh ',
    },
    {
      'title': 'JOB POSITION / TITLE HERE',
      'details': 'Company Name  - 2010 - 2014',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh',
    },
    {
      'title': 'JOB POSITION / TITLE HERE',
      'details': 'Company Name  - 2010 - 2014',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh',
    },
    {
      'title': 'JOB POSITION / TITLE HERE',
      'details': 'Company Name  - 2010 - 2014',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed diam nonummy nibh ',
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
    ScreenUtil.init(context, designSize: const Size(595, 842));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 595.w,

          ///height: 842.h,
          color: Colors.black,
          child: Column(
            children: [
              Container(
                width: 595.w,
                height: 90.h,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 87.w,
                      height: 87.h,
                      child: GestureDetector(
                        onTap: _pickImage,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: _profileImage != null
                              ? FileImage(_profileImage!)
                              : AssetImage(AppImages.profilePicture) as ImageProvider,
                          //radius: 45.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 209.w,
                      height: 78.h,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 8.h),
                        child: GestureDetector(
                          onTap: () => _editUserDetails(context),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 30.w,
                                height: 2.h,
                                color: Color(0xFF00C781),
                                margin: EdgeInsets.only(bottom: 8.h),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "I'm ",
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 24.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "$userName,\n",
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "a $role.",
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24.sp,
                                        color: Color(0xFF00C781), // Green color
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 178.w,
                      height: 47.h,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 8.h),
                        child: GestureDetector(
                          onTap: () => _editSocialMedia(context),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Username Text
                              Text(
                                socialMedia,
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  _buildSocialIcon(AppImages.facebook7),
                                  _buildSocialIcon(AppImages.dribble7),
                                  _buildSocialIcon(AppImages.behance7),
                                  _buildSocialIcon(AppImages.instagram7),
                                  _buildSocialIcon(AppImages.LinkedIn7),
                                  _buildSocialIcon(AppImages.twitter7),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 237.w,
                    //height: 614.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 190.w,
                          //height: 113.h,
                          // color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 8.h),
                            child: GestureDetector(
                              onTap: () => _editContactDetails(context),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Contact",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  Row(
                                    children: [
                                      Icon(Icons.email,
                                          color: Color(0xFF00C781), size: 16.w),
                                      SizedBox(width: 8.w),
                                      Text(
                                        email,
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8.h),
                                  Row(
                                    children: [
                                      Icon(Icons.phone,
                                          color: Color(0xFF00C781), size: 16.w),
                                      SizedBox(width: 8.w),
                                      Text(
                                        mobile,
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8.h),
                                  Row(
                                    children: [
                                      Icon(Icons.language,
                                          color: Color(0xFF00C781), size: 16.w),
                                      SizedBox(width: 8.w),
                                      Text(
                                        website,
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 190.w,
                          //height: 130.h,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 8.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Education",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  // Loop through the education list and display each item
                                  ...education.map((edu) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 8
                                              .h), // Adjust the spacing between items
                                      child: GestureDetector(
                                        onTap: () =>
                                            _editEducationItem(context, edu),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              edu['degree']!,
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              edu['institution']!,
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(height: 4.h),
                                            Text(
                                              edu['year']!,
                                              style: TextStyle(
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14.sp,
                                                color: Color(0xFF00C781),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ],
                              )),
                        ),
                        SizedBox(
                          width: 190.w,
                          //height: 113.h,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 8.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Expertise",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  // Loop through the skillsData list and build each item
                                  ...expertiseData.map((skill) {
                                    int index = expertiseData.indexOf(skill);
                                    return GestureDetector(
                                      onTap: () => _editExpertiseDialog(
                                          context, index, skill['name']!),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            bottom: 4
                                                .h), // Adjust the spacing between items
                                        child:
                                            _buildExpertiseItem(skill['name']!),
                                      ),
                                    );
                                  }).toList(),
                                ],
                              )),
                        ),
                        SizedBox(
                          width: 190.w,
                          //height: 113.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Skills",
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.sp,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 8.h),
                                ...skillsData.map((skill) {
                                  int index = skillsData.indexOf(skill);
                                  return GestureDetector(
                                    onTap: () => _editSkillDialog(
                                        context, index, skill['name']!),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 4
                                              .h), // Adjust the spacing between items
                                      child: _buildSkillItem(skill['name']!),
                                    ),
                                  );
                                }).toList(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      bottomLeft: Radius.circular(20.r),
                    ),
                    child: Container(
                      //width: MediaQuery.of(context).size.width ,
                      //height: 614.h,
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1D1D),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.r),
                          bottomLeft: Radius.circular(20.r),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            //width: 5.w,
                            //height: 590.h,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 300.w,
                                //height: 100.h,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.w, vertical: 8.h),
                                  child: GestureDetector(
                                    onTap: ()=> _editAbout(context),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "About Me",
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        Text( about,
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12.sp,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                        SizedBox(height: 8.h),
                                        Divider(
                                          color: Colors
                                              .grey, // Adjust the color to match your design
                                          thickness: 1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 290.w,
                                //height: 433.h,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.w, vertical: 12.h),
                                   child:  Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Work Experience",
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        // Loop through the experiences list and build each experience item
                                        ...experiences.map((experience) {
                                          return GestureDetector(
                                            onTap: () => _editExperienceItem(context, experience),
                                            child: Padding(
                                              padding: EdgeInsets.only(bottom: 16.h), // Add spacing between items
                                              child: _buildExperienceItem(
                                                companyName: experience['details']!, // Extract company name
                                                jobTitle: experience['title']!,
                                                duration: '', // Extract duration
                                                description: experience['description']!,
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ],
                                    )

                                ),
                              ),
                            ],
                          ),
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

  Widget _buildSocialIcon(String assetPath) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: CircleAvatar(
          radius: 10.r,
          backgroundColor: Colors.blue,
          child: SvgPicture.asset(
            assetPath,
            fit: BoxFit.contain,
          )),
    );
  }

  Widget _buildExpertiseItem(String text) {
    return Row(
      children: [
        Icon(Icons.circle, size: 6.w, color: Color(0xFF00C781)),
        SizedBox(width: 8.w),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildSkillItem(String text) {
    return Row(
      children: [
        Icon(Icons.circle, size: 6.w, color: Color(0xFF00C781)),
        SizedBox(width: 8.w),
        Text(
          text,
          style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Colors.white),
        ),
      ],
    );
  }

  Widget _buildExperienceItem({
    required String companyName,
    required String jobTitle,
    required String duration,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          companyName,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: Color(0xFF00C781), // Green color for company name
          ),
        ),
        SizedBox(height: 4.h),
        Row(
          children: [
            Text(
              jobTitle,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              "$duration",
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Text(
          description,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 12.sp,
            color: Colors.white,
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
                  userName = nameController.text;
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

  void _editContactDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController phoneController =
            TextEditingController(text: mobile);
        final TextEditingController emailController =
            TextEditingController(text: email);
        final TextEditingController webisteController =
            TextEditingController(text: website);

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
                controller: webisteController,
                decoration: const InputDecoration(labelText: 'Website'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  mobile = phoneController.text;
                  email = emailController.text;
                  website = webisteController.text;
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

  Future<void> _editExpertiseDialog(
      BuildContext context, int index, String currentName) async {
    TextEditingController nameController =
        TextEditingController(text: currentName);
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Expertise'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Expertise Name'),
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
                  expertiseData[index] = {
                    'name': newName,
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
                  skillsData[index] = {
                    'name': newName,
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

}
