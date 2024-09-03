import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/constant/app_images_constant.dart';

class Template1 extends StatefulWidget {
  const Template1({super.key});

  @override
  State<Template1> createState() => _Template1State();
}

class _Template1State extends State<Template1> {
  String userName = 'Peter';
  String userRole = 'Product Designer';
  String socialMedia = '@peterdesigner';
  String id = '123456789';
  String email = 'contact@peter.com';
  String mobile = '+001 123 456 789';
  String address = 'address, city, country';
  String ability1 = 'Lorem ipsum dolor sit amet';
  String ability2 = 'Lorem ipsum dolor sit amet';
  String ability3 = 'Lorem ipsum dolor sit amet';
  String ability4 = 'Lorem ipsum dolor sit amet';

  String about =
      "Position title and any relevant details. I am a tech enthusiast .I am passionate about designs, goal driven, quick to learn and a highly productive individual. I have various industry ready design skills, I am experienced in various software design tools, experienced in providing technical support to users, collaborated on design projects and working in a team-oriented environment. Both remotely and on-site.";
  String experience =
      "As the creative director at Longchris foundation, I worked to create graphic design and marketing solutions to deliver engaging content that meets our audience’s needs. Designed the foundation’s website and managed its contentsto pass standard and accurate brand identity.";

  List<Map<String, String>> reference = [
    {
      'name': 'Someone Name',
      'title': 'Company  Institute Name',
      'email': 'contact@peterdesigner.com',
      'phone': '+001 123 456 789',
    },
    {
      'name': 'Someone Name',
      'title': 'Company  Institute Name',
      'email': 'contact@peterdesigner.com',
      'phone': '+001 123 456 789',
    },
  ];

  List<Map<String, dynamic>> skillsData = [
    {'name': 'Figma - XD', 'proficiency': 0.8},
    {'name': 'Photoshop', 'proficiency': 0.7},
    {'name': 'Illustrator', 'proficiency': 0.6},
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
    {
      'year': '2012',
      'degree': 'Enter Bachelor Degree',
      'institution': 'University / College / Institute',
    },
  ];

  File? _profileImage; // Variable to hold the image file

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
    ScreenUtil.init(context, designSize: const Size(192, 249));
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            width: 192.w,
             height: 249.h,
            color: Color(0xFF343C43),

          ),
          Container(
            width: 64.w,
            height: 249.h,
            color: Color(0xFF344353),


          ),
          Positioned(
            top: 8.h,
            left: 10.w,
            bottom: 9.h,
            child: Container(
              width: 79.w,
              height: 230.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 5.h),
                child: GestureDetector(
                  onTap: () => _pickImage(),
                  child: Column(
                    children: [
                      _profileImage == null
                          ? ClipOval(
                              child: Image.asset(
                                AppImages.profilePicture,
                                fit: BoxFit.cover,
                                width: 49.w,
                                height: 49.w,
                              ),
                            )
                          : ClipOval(
                              child: Image.file(
                                _profileImage!,
                                fit: BoxFit.cover,
                                width: 49.w,
                                height: 49.w,
                              ),
                            ),
                      SizedBox(height: 4.h),
                      GestureDetector(
                        onTap: () => _editUserDetails(context),
                        child: Column(
                          children: [
                            Text(userName,
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 5.sp,
                                  color: Color(0xFF00101F),
                                )),
                            Text(
                              userRole,
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                fontSize: 3.9.sp,
                                color: Color(0xFF00101F),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Container(
                        width: 142.w,
                        //height: 60.85.h,
                        // color: Colors.black,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 1.w, vertical: 1.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildSectionHeader("BASIC INFO"),
                              SizedBox(height: 1.h),
                              GestureDetector(
                                onTap: () => _editContactDetails(context),
                                child: Column(
                                  children: [
                                    _buildInfoItem("Name", userName),
                                    _buildInfoItem("ID", id),
                                    _buildInfoItem("Phone", mobile),
                                    _buildInfoItem("Email", email),
                                    _buildInfoItem("Address", address),
                                  ],
                                ),
                              ),
                              SizedBox(height: 4.h),
                              _buildSectionHeader("ABILITIES"),
                              GestureDetector(
                                onTap: () => _editAbilityDetails(context),
                                child: Column(
                                  children: [
                                    //SizedBox(height: 5.h),
                                    _buildBulletPoint(ability1),
                                    _buildBulletPoint(ability2),
                                    _buildBulletPoint(ability3),
                                    _buildBulletPoint(ability4),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.h),
                              _buildSectionHeader("REFERENCES"),
                              //SizedBox(height: 2.h),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: reference.map((ref) {
                                  return GestureDetector(
                                    onTap: () =>
                                        _editReferenceDetails(context, ref),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildReferenceItem(
                                          name: ref['name']!,
                                          title: ref['title']!,
                                          email: ref['email']!,
                                          phone: ref['phone']!,
                                        ),
                                      ],
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
                ),
              ),
            ),
          ),
          Positioned(
            top: 14.h,
            left: 96.w,
            child: Container(

              width: 84.w,
              //height: 760.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionHeader("Profile"),
                    //SizedBox(height: 5.h),
                    GestureDetector(
                      onTap: () => _editAboutMe(),
                      child:
                          _buildProfileItem(title: "Desc", description: about),
                    ),
                    SizedBox(height: 3.h),
                    _buildProfileItem(
                      title: "Skills",
                      skills: skillsData.asMap().entries.map((entry) {
                        int index = entry.key;
                        Map<String, dynamic> skill = entry.value;

                        return GestureDetector(
                          onTap: () => _editSkillDialog(context, index,
                              skill['name'], skill['proficiency']),
                          child: _buildSkillBar(
                              skill['name'], skill['proficiency']),
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 3.h),
                    GestureDetector(
                      onTap: () => _editExperience(),
                      child: _buildProfileItem(
                        title: "Experience",
                        description: experience,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    _buildSectionHeader("EDUCATION"),
                    SizedBox(height: 2.h),
                    Column(
                      children: education
                          .map((e) => GestureDetector(
                                onTap: () => _editEducationItem(context, e),
                                child: _buildEducationItem(e['year']!,
                                    e['degree']!, e['institution']!),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 3.15.sp,
            color: Color(0xFF00EBFA),
          ),
        ),
        Divider(
          color: Colors.grey,
          thickness: 1,
        ),
      ],
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              fontSize: 2.52.sp,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 2.52.sp,
                color: Colors.black,
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.5.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.circle, size: 1.w, color: Colors.black),
          SizedBox(width: 1.w),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 2.52.sp,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReferenceItem({
    required String name,
    required String title,
    required String email,
    required String phone,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              fontSize: 2.52.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 2.52.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            email,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 2.52.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            phone,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 2.52.sp,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSectionHeader(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 12.sp,
            color: Color(0xFF00CFFF),
          ),
          textAlign: TextAlign.justify,
        ),
        Divider(
          color: Colors.grey,
          thickness: 1,
        ),
      ],
    );
  }

  Widget _buildProfileItem({
    required String title,
    String? description,
    List<Widget>? skills,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.circle, size: 2.w, color: Color(0xFF00CFFF)),
            SizedBox(width: 2.w),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                fontSize: 2.8.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
        if (description != null) ...[
          SizedBox(height: 1.6.h),
          Text(
            description,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 2.53.sp,
              color: Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
        if (skills != null) ...[
          SizedBox(height: 2.h),
          Column(children: skills),
        ],
      ],
    );
  }

  Widget _buildSkillBar(String skill, double proficiency) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skill,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 2.97.sp,
            color: Colors.white,
          ),
        ),
        //SizedBox(height: 4.h),
        Stack(
          children: [
            Container(
              height: 1.5.h,
              width: 80.w,
              color: Colors.grey[700],
            ),
            Container(
              height: 1.5.h,
              width: 80.w * proficiency,
              color: Color(0xFF00CFFF),
            ),
          ],
        ),
        SizedBox(height: 2.h),
      ],
    );
  }

  Widget _buildEducationItem(String year, String title, String institution) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Icon(Icons.circle, size: 2.8.w, color: Color(0xFF00CFFF)),
            SizedBox(height: 0.h),
            Container(
              width: 1.w,
              height: 11.h,
              color: Colors.grey,
            ),
          ],
        ),
        SizedBox(width: 3.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              year,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                fontSize: 2.8.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 2.8.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              institution,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 2.8.sp,
                color: Colors.white,
              ),
            ),
          ],
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
            TextEditingController(text: id);
        final TextEditingController locationController =
            TextEditingController(text: address);

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
                decoration: const InputDecoration(labelText: 'Id'),
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
                  email = emailController.text;
                  id = websiteController.text;
                  address = locationController.text;
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

  void _editAbilityDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController phoneController =
            TextEditingController(text: ability1);
        final TextEditingController emailController =
            TextEditingController(text: ability2);
        final TextEditingController websiteController =
            TextEditingController(text: ability3);
        final TextEditingController locationController =
            TextEditingController(text: ability4);

        return AlertDialog(
          title: const Text('Edit Ability Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(labelText: 'Ability 1'),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Ability 2'),
              ),
              TextField(
                controller: websiteController,
                decoration: const InputDecoration(labelText: 'Ability 3'),
              ),
              TextField(
                controller: locationController,
                decoration: const InputDecoration(labelText: 'Ability 4'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  ability1 = phoneController.text;
                  ability2 = emailController.text;
                  ability3 = websiteController.text;
                  ability4 = locationController.text;
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

  void _editReferenceDetails(BuildContext context, Map<String, String> item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController nameController =
            TextEditingController(text: item['name']);
        final TextEditingController titleController =
            TextEditingController(text: item['title']);
        final TextEditingController emailController =
            TextEditingController(text: item['email']);
        final TextEditingController phoneController =
            TextEditingController(text: item['phone']);

        return AlertDialog(
          title: const Text('Edit Experience'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Institute'),
              ),
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
                  item['name'] = nameController.text;
                  item['title'] = titleController.text;
                  item['email'] = emailController.text;
                  item['phone'] = phoneController.text;
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

  Future<void> _editAboutMe() async {
    final newAboutMe =
        await _showEditDialog('Description', about, multiline: true);
    if (newAboutMe != null && newAboutMe.isNotEmpty) {
      setState(() {
        about = newAboutMe;
      });
    }
  }

  Future<void> _editExperience() async {
    final newAboutMe =
        await _showEditDialog('Experience', experience, multiline: true);
    if (newAboutMe != null && newAboutMe.isNotEmpty) {
      setState(() {
        experience = newAboutMe;
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
}
