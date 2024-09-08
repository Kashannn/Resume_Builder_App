import 'dart:io';

import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Template18 extends StatefulWidget {
  const Template18({super.key});

  @override
  State<Template18> createState() => _Template18State();
}

class _Template18State extends State<Template18> {
  String firstName = 'Malkin';
  String lastName = 'Anderson';
  String userRole = 'UI/UX Designer';
  String email = 'contact@designer.com';
  String mobile = '+001 123 456 789';
  String location = 'New York, USA';
  String portfolio = 'www.yourpo\nrtfolio.com';

  String about =
      "Lorem ipsum dolor sit amet consectetur adipiscing elit neque tempor malesuada adipiscing congue diam quis orci amet porttitor blandit amet nullam sit elit, purus blandit non ut non quam curabitur.";

  List<Map<String, dynamic>> skillsWithLevels = [
    {'skill': 'Photoshop', 'level': 8},
    {'skill': 'Illustrator', 'level': 7},
    {'skill': 'Graphic Design', 'level': 6},
    {'skill': 'UI/UX Design', 'level': 9},
    {'skill': 'Figma', 'level': 7},
  ];

  List<Map<String, String>> education = [
    {
      'year': '2017 - 2020',
      'degree': 'Masters Degree',
      'institution': 'Institute',
    },
    {
      'year': '2012 - 2015',
      'degree': 'Bachelor Degree',
      'institution': 'Institute',
    },
    {
      'year': '2012 - 2015',
      'degree': 'Bachelor Degree',
      'institution': 'Institute',
    },
  ];

  List<Map<String, String>> experience = [
    {
      'company': 'Borcelle Studio',
      'position': 'Photographer',
      'years': '2021',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    },
    {
      'company': 'Creative Lens',
      'position': 'Assistant Photographer',
      'years': '2016',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
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
    ScreenUtil.init(context, designSize: const Size(670, 1300));
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          //width: 595.w,
          // height: 842.h,
          child: Stack(
            children: [
              SvgPicture.asset(
                AppImages.imagetemplate18,
                width: 600.w,
                height: 1300.h,
                fit: BoxFit.fill,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 40.h),
                        child: GestureDetector(
                          onTap: _pickImage,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: _profileImage != null
                                ? FileImage(_profileImage!)
                                : AssetImage(
                                AppImages.profilePicture18)
                            as ImageProvider,
                            radius: 90.r,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () => _editUserDetails(context),
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 170.w, top: 50.h),
                                child: Container(
                                  width: 200.w,
                                  //height: 110.h,
                                  // color: Colors.red,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'HELLO! I\'M',
                                        style: GoogleFonts.inter(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                      ShaderMask(
                                        shaderCallback: (bounds) =>
                                            LinearGradient(
                                          colors: [
                                            Color(0xFF5BBBFF),
                                            Color(0xFF005592)
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ).createShader(bounds),
                                        child: Text(
                                          firstName,
                                          style: GoogleFonts.inter(
                                            fontSize: 35.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      ShaderMask(
                                        shaderCallback: (bounds) =>
                                            const LinearGradient(
                                          colors: [
                                            Color(0xFF5BBBFF),
                                            Color(0xFF005592)
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ).createShader(bounds),
                                        child: Text(
                                          lastName,
                                          style: GoogleFonts.inter(
                                            fontSize: 40.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 16.h),
                                      Text(
                                        userRole,
                                        style: GoogleFonts.inter(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                          SizedBox(height: 40.h),
                          GestureDetector(
                            onTap: () => _editContactDetails(context),
                            child: Container(
                              width: 330.w,
                              //height: 100.h,
                              color: Colors.transparent,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.phone,
                                          color: Color(0xFF5BBBFF),
                                          size: 16.sp),
                                      SizedBox(width: 8.w),
                                      Text(
                                        mobile,
                                        style: GoogleFonts.inter(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Icon(Icons.email,
                                          color: Color(0xFF5BBBFF),
                                          size: 16.sp),
                                      SizedBox(width: 8.w),
                                      Text(
                                        email,
                                        style: GoogleFonts.inter(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.location_on,
                                          color: Color(0xFF5BBBFF),
                                          size: 16.sp),
                                      SizedBox(width: 8.w),
                                      Expanded(
                                        child: Text(
                                          location,
                                          style: GoogleFonts.inter(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 245.w,
                        // height: 150.h,
                        color: Color(0xFF50D3F1).withOpacity(0.25),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 5.h),
                          child: GestureDetector(
                            onTap: () => _editAbout(context),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'About Me',
                                  style: GoogleFonts.inter(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4089D8),
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  about,
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF4D4D4D),
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 30.w),
                      Column(
                        children: [
                          Container(
                            width: 260.w,
                            //height: 226.h,
                            color: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'EDUCATION',
                                  style: GoogleFonts.dmSans(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF4089D8),
                                  ),
                                ),
                                SizedBox(height: 2.h),
                                ...education
                                    .map((educationItem) => GestureDetector(
                                          onTap: () => _editEducationItem(
                                              context, educationItem),
                                          child: _buildEducationItem(
                                            year: educationItem['year']!,
                                            title: educationItem['degree']!,
                                            institution:
                                                educationItem['institution']!,
                                            showDot:
                                                true, // Adjust based on your logic for showing the dot
                                          ),
                                        ))
                                    .toList(),
                                SizedBox(height: 5.h),
                                Container(
                                  width: double.infinity,
                                  height: 1.h,
                                  color: Color(0xFF6F2DBD),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100.w,
                          // height: 170.h,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Skills',
                                style: GoogleFonts.inter(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4089D8),
                                ),
                              ),
                              SizedBox(height: 8.h),
                              ...skillsWithLevels.asMap().entries.map((entry) {
                                int index = entry.key;
                                Map<String, dynamic> skill = entry.value;

                                return GestureDetector(
                                  onTap: () => _editSkillDialog(context, index,
                                      skill['skill'], skill['level']),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 8.h),
                                    child: _buildSkillRow(
                                        skill['skill'], skill['level']),
                                  ),
                                );
                              }).toList(),
                              Divider(
                                color: Color(0xFF7623FF),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 340.w,
                          //height: 230.h,
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Work Experience',
                                style: GoogleFonts.dmSans(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4089D8),
                                ),
                              ),
                              //SizedBox(height: 12.h),
                              ...experience
                                  .map((expItem) => GestureDetector(
                                        onTap: () => _editExperienceItem(
                                            context, expItem),
                                        child: _buildExperienceItem(
                                          year: expItem['years']!,
                                          title: expItem['position']!,
                                          company: expItem['company']!,
                                          description: expItem['description']!,
                                          showDot:
                                              true, // Adjust based on your logic for showing the dot
                                        ),
                                      ))
                                  .toList(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _editPortfolio(context),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Container(
                        //width: 100.w,
                        //height: 50.h,
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Portfolio',
                              style: GoogleFonts.dmSans(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4089D8),
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              portfolio,
                              style: GoogleFonts.dmSans(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
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

  Widget _buildSkillRow(String skill, int proficiency) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            skill,
            style: GoogleFonts.inter(
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4.h),
          Row(
            children: List.generate(10, (index) {
              return Icon(
                Icons.circle,
                size: 8.sp,
                color:
                    index < proficiency ? Color(0xFF4089D8) : Color(0xFFB0C4DE),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildEducationItem({
    required String year,
    required String title,
    required String institution,
    required bool showDot,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 2.w,
              height: 30.h,
              color: Color(0xFF6F2DBD), // Vertical line color
            ),
            if (showDot)
              Container(
                width: 10.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Color(0xFF6F2DBD), // Dot color
                  shape: BoxShape.circle,
                ),
              ),
            if (!showDot)
              Container(
                width: 2.w,
                height: 20.h,
                color: Colors.transparent, // Line after the last dot
              ),
          ],
        ),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              year,
              style: GoogleFonts.dmSans(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              title,
              style: GoogleFonts.dmSans(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              institution,
              style: GoogleFonts.dmSans(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ],
    );
  }

  Widget _buildExperienceItem({
    required String year,
    required String title,
    required String company,
    required String description,
    required bool showDot,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 2.w,
              height: 30.h,
              color: Color(0xFF6F2DBD),
            ),
            if (showDot)
              Container(
                width: 8.w,
                height: 8.h,
                decoration: BoxDecoration(
                  color: Color(0xFF6F2DBD),
                  shape: BoxShape.circle,
                ),
              ),
            if (!showDot)
              Container(
                width: 2.w,
                height: 30.h,
                color: Colors.transparent,
              ),
          ],
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                year,
                style: GoogleFonts.dmSans(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                title,
                style: GoogleFonts.dmSans(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                company,
                style: GoogleFonts.dmSans(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                description,
                style: GoogleFonts.dmSans(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 16.h),
            ],
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
            TextEditingController(text: firstName);
        final TextEditingController ndController =
            TextEditingController(text: lastName);
        final TextEditingController roleController =
            TextEditingController(text: userRole);

        return AlertDialog(
          title: const Text('Edit User Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'First Name'),
              ),
              TextField(
                controller: ndController,
                decoration: const InputDecoration(labelText: 'Last Name'),
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
                  firstName = nameController.text;
                  lastName = ndController.text;
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
        final TextEditingController locationController =
            TextEditingController(text: location);

        return AlertDialog(
          title: const Text('Edit Contact Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(labelText: 'Phone Number'),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: locationController,
                decoration: const InputDecoration(labelText: 'Address'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  mobile = phoneController.text;
                  location = locationController.text;
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
                decoration: InputDecoration(labelText: 'Skill Value (00 - 10)'),
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
                int newValue =
                    int.tryParse(valueController.text) ?? currentValue;

                setState(() {
                  skillsWithLevels[index] = {
                    'skill': newName,
                    'level': newValue,
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

  void _editExperienceItem(BuildContext context, Map<String, String> item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController titleController =
            TextEditingController(text: item['company']);
        final TextEditingController positionController =
            TextEditingController(text: item['position']);
        final TextEditingController fromtoController =
            TextEditingController(text: item['years']);

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
                controller: positionController,
                decoration: const InputDecoration(labelText: 'Position'),
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
                  item['company'] = titleController.text;
                  item['position'] = positionController.text;
                  item['years'] = fromtoController.text;
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
