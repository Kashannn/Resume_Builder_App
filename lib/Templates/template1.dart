import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/constant/app_images_constant.dart';

class Template1 extends StatefulWidget {
  const Template1({super.key});

  @override
  State<Template1> createState() => _Template1State();
}

class _Template1State extends State<Template1> {
  Color userNameColor = Colors.black;
  Color userRoleColor = Colors.black;
  Color ability1Color = Colors.black;
  Color phoneColor = Colors.black;
  Color emailColor = Colors.black;
  Color idColor = Colors.black;
  Color addressColor = Colors.black;
  Color ability2Color = Colors.black;
  Color ability3Color = Colors.black;
  Color ability4Color = Colors.black;
  Color referenceNameColor = Colors.black;
  Color referenceTitleColor = Colors.black;
  Color referenceEmailColor = Colors.black;
  Color referencePhoneColor = Colors.black;
  Color aboutMeColor = Colors.white;
  List<Color> skillColors = [];
  List<Color> educationColors = [];

  String userName = 'Peter';
  String userRole = 'Product Designer';
  String socialMedia = '@peterdesigner';
  String id = '123456789';
  String email = 'contact@peter.com';
  String mobile = '+001 123 456 789';
  String address = 'address, city, country';
  List<String> abilities = [
    'Lorem ipsum dolor sit amet',
    'Lorem ipsum dolor sit amet',
    'Lorem ipsum dolor sit amet',
    'Lorem ipsum dolor sit amet'
  ];

  String about =
      "Position title and any relevant details. I am a tech enthusiast .I am passionate about designs, goal driven, quick to learn and a highly productive individual. I have various industry ready design skills, I am experienced in various software design tools.";
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
  void initState() {
    super.initState();
    skillColors = List<Color>.filled(skillsData.length, Colors.white);
    educationColors =
        List<Color>.generate(education.length, (index) => Colors.white);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(192, 249));
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
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
                // Removed the height parameter
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.w, vertical: 5.h),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Added mainAxisSize
                      children: [
                        _profileImage == null
                            ? GestureDetector(
                                onTap: _pickImage,
                                child: ClipOval(
                                  child: Image.asset(
                                    AppImages.t1,
                                    fit: BoxFit.cover,
                                    width: 49.w,
                                    height: 49.w,
                                  ),
                                ),
                              )
                            : GestureDetector(
                                onTap: _pickImage,
                                child: ClipOval(
                                  child: Image.file(
                                    _profileImage!,
                                    fit: BoxFit.cover,
                                    width: 49.w,
                                    height: 49.w,
                                  ),
                                ),
                              ),
                        SizedBox(height: 4.h),
                        GestureDetector(
                          onTap: () => _editUserDetails(context),
                          child: Column(
                            children: [
                              Text(
                                userName,
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 5.sp,
                                  color: userNameColor,
                                ),
                              ),
                              Text(
                                userRole,
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 3.9.sp,
                                  color: userRoleColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Container(
                          width: 142.w,
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
                                      _buildInfoItem(
                                          "Phone", mobile, phoneColor),
                                      _buildInfoItem(
                                          "Email", email, emailColor),
                                      _buildInfoItem("ID", id, idColor),
                                      _buildInfoItem(
                                          "Address", address, addressColor),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                _buildSectionHeader("ABILITIES"),
                                GestureDetector(
                                  onTap: () => _editAbilityDetails(context),
                                  child: Column(
                                    children: [

                                      for (int i = 0; i < abilities.length; i++)
                                        _buildBulletPoint(abilities[i], ability1Color),
                                    ],
                                  ),
                                ),

                                SizedBox(height: 5.h),
                                _buildSectionHeader("REFERENCES"),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: reference.map((ref) {
                                    return GestureDetector(
                                      onTap: () =>
                                          _editReferenceDetails(context, ref),
                                      child: _buildReferenceItem(
                                        name: ref['name']!,
                                        title: ref['title']!,
                                        email: ref['email']!,
                                        phone: ref['phone']!,
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
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
                  child: SingleChildScrollView(
                    // Added SingleChildScrollView
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSectionHeader("Profile"),
                        GestureDetector(
                          onTap: () => _editAboutMe(),
                          child: _buildProfileItem(
                            title: "About Me",
                            description: about,
                            descriptionColor:
                                aboutMeColor, // Pass the selected color for the description
                          ),
                        ),
                        SizedBox(height: 3.h),
                        _buildProfileItem(
                          title: "Skills",
                          skills: skillsData.asMap().entries.map((entry) {
                            int index = entry.key;
                            Map<String, dynamic> skill = entry.value;

                            return GestureDetector(
                              onTap: () => _editSkillDialog(
                                context,
                                index,
                                skill['name'],
                                skill['proficiency'],
                              ),
                              child: _buildSkillBar(
                                  skillsData[index]['name'],
                                  skillsData[index]['proficiency'],
                                  skillColors[index]),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 3.h),
                        GestureDetector(
                          onTap: () => _editExperience(),
                          child: _buildProfileItem(
                            title: "Experience",
                            description: experience,
                            descriptionColor: aboutMeColor,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        _buildSectionHeader("EDUCATION"),
                        SizedBox(height: 2.h),
                        Column(
                          children: education.asMap().entries.map((entry) {
                            int index = entry.key;
                            Map<String, String> e = entry.value;

                            return GestureDetector(
                              onTap: () =>
                                  _editEducationItem(context, e, index),
                              child: _buildEducationItem(
                                e['year']!,
                                e['degree']!,
                                e['institution']!,
                                educationColors[index],
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
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

  Widget _buildInfoItem(String label, String value, Color textColor) {
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
              color: textColor,
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
                color: textColor, // Use the selected color
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text, Color textColor) {
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
                color: textColor, // Apply the selected color
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
              color: referenceNameColor, // Apply selected color
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 2.52.sp,
              color: referenceTitleColor, // Apply selected color
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            email,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 2.52.sp,
              color: referenceEmailColor, // Apply selected color
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            phone,
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 2.52.sp,
              color: referencePhoneColor, // Apply selected color
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
    Color? descriptionColor,
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
              color: descriptionColor ?? Colors.white,
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

  Widget _buildSkillBar(String skill, double proficiency, Color textColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skill,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            fontSize: 2.97.sp,
            color: textColor,
          ),
        ),
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

  Widget _buildEducationItem(
      String year, String title, String institution, Color textColor) {
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
                color: textColor, // Apply selected color
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 2.8.sp,
                color: textColor, // Apply selected color
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              institution,
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 2.8.sp,
                color: textColor,
              ),
            ),
          ],
        ),
      ],
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
        Color tempPhoneColor = phoneColor;
        Color tempEmailColor = emailColor;
        Color tempIdColor = idColor;
        Color tempAddressColor = addressColor;

        return AlertDialog(
          title: const Text('Edit Contact Details'),
          content: SingleChildScrollView(

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: phoneController,
                  decoration: const InputDecoration(labelText: 'Phone',
                    border: OutlineInputBorder(),
                  ),
                ),
                10.verticalSpace,
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email',
                    border: OutlineInputBorder(),),
                ),
                10.verticalSpace,
                TextField(
                  controller: websiteController,
                  decoration: const InputDecoration(labelText: 'Id',
                    border: OutlineInputBorder(),
                  ),
                ),
                10.verticalSpace,
                TextField(
                  controller: locationController,
                  decoration: const InputDecoration(labelText: 'Address',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  mobile = phoneController.text;
                  email = emailController.text;
                  id = websiteController.text;
                  address = locationController.text;

                  phoneColor = tempPhoneColor;
                  emailColor = tempEmailColor;
                  idColor = tempIdColor;
                  addressColor = tempAddressColor;
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
    List<TextEditingController> controllers = abilities
        .map((ability) => TextEditingController(text: ability))
        .toList();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Text('Edit Ability Details'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...controllers.asMap().entries.map((entry) {
                      int index = entry.key;
                      TextEditingController controller = entry.value;

                      return Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: controller,
                                  decoration: InputDecoration(
                                    labelText: 'Ability ${index + 1}',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.remove_circle),
                                onPressed: () {
                                  setState(() {
                                    controllers.removeAt(index);
                                    abilities.removeAt(index);
                                  });
                                },
                              ),
                            ],
                          ),
                          10.verticalSpace,
                        ],
                      );
                    }).toList(),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              controllers.add(TextEditingController(text: ''));
                              abilities.add('');
                            });
                          },
                          icon: Icon(Icons.add),
                          label: Text('Add'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      // Update the abilities list with the new values from controllers
                      abilities = controllers.map((c) => c.text).toList();
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
      },
    ).then((_) {
      // Force a rebuild of the parent widget after the dialog is closed
      setState(() {});
    });
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

        // Temporary color holders for reference fields
        Color tempNameColor = referenceNameColor;
        Color tempTitleColor = referenceTitleColor;
        Color tempEmailColor = referenceEmailColor;
        Color tempPhoneColor = referencePhoneColor;

        return AlertDialog(
          title: const Text('Edit Reference Details'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'Name',
                  border: OutlineInputBorder()
                  ),
                ),
                10.verticalSpace,
                TextField(
                  controller: titleController,
                  decoration: const InputDecoration(labelText: 'Institute',
                  border: OutlineInputBorder()
                  ),
                ),
                10.verticalSpace,
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email',
                  border: OutlineInputBorder()
                  ),
                ),
                10.verticalSpace,
                TextField(
                  controller: phoneController,
                  decoration: const InputDecoration(labelText: 'Phone',
                  border: OutlineInputBorder()
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  // Update the reference details and their respective colors
                  item['name'] = nameController.text;
                  item['title'] = titleController.text;
                  item['email'] = emailController.text;
                  item['phone'] = phoneController.text;

                  referenceNameColor = tempNameColor;
                  referenceTitleColor = tempTitleColor;
                  referenceEmailColor = tempEmailColor;
                  referencePhoneColor = tempPhoneColor;
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
    TextEditingController aboutController = TextEditingController(text: about);
    int charCount = aboutController.text.length;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setStateDialog) {
            return AlertDialog(
              title: const Text('Edit About Me'),
              content: SingleChildScrollView(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'About',
                          hintText:
                              'Tell us about yourself (300 characters max)',
                          border: const OutlineInputBorder(),
                          counterText: '', // Hide the default character counter
                        ),
                        controller: aboutController,
                        maxLines: 10,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(300),
                        ],
                        onChanged: (value) {
                          setStateDialog(() {
                            charCount = value.length; // Update character count
                          });
                        },
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '$charCount/300', // Display updated character count
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
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
      },
    );
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

  Future<String?> _showEditDialog(
      String title,
      String initialValue, {
        bool multiline = false,
      }) async {
    final controller = TextEditingController(text: initialValue);

    return await showDialog<String>(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setStateDialog) {
            return AlertDialog(
              title: Text(title),
              content: multiline
                  ? Container(
                height: 300,
                child: Column(
                  children: [
                    TextFormField(
                      controller: controller,
                      maxLines: 12,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(300)
                      ],
                      decoration: InputDecoration(
                        labelText: 'Experience',
                        hintText:
                        'Tell us about your experience (300 characters max)',
                        border: const OutlineInputBorder(),
                        counterText: '', // Hide the default character counter
                      ),
                      onChanged: (text) {
                        setStateDialog(() {
                          // Trigger rebuild to update the character count
                        });
                      },
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '${controller.text.length}/300', // Display character count
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                  ],
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
      },
    );
  }


  Future<void> _editSkillDialog(BuildContext context, int index,
      String currentName, double currentValue) async {
    TextEditingController nameController =
        TextEditingController(text: currentName);
    TextEditingController valueController =
        TextEditingController(text: currentValue.toString());

    Color tempSkillColor =
        skillColors[index]; // Temporary color holder for the skill

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Skill'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: 'Skill Name',
                    border: const OutlineInputBorder(),
                  ),
                ),
                10.verticalSpace,
                TextField(
                  controller: valueController,
                  keyboardType: TextInputType.number,
                  decoration:
                      InputDecoration(labelText: 'Skill Value (0.0 - 1.0)',
                        border: const OutlineInputBorder(),
                      ),
                ),
              ],
            ),
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
                  skillColors[index] = tempSkillColor; // Save selected color
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

  void _editEducationItem(
      BuildContext context, Map<String, String> item, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController yearController =
            TextEditingController(text: item['year']);
        final TextEditingController degreeController =
            TextEditingController(text: item['degree']);
        final TextEditingController institutionController =
            TextEditingController(text: item['institution']);

        Color tempEducationColor =
            educationColors[index]; // Temporary color holder

        return AlertDialog(
          title: const Text('Edit Education'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: yearController,
                  decoration: const InputDecoration(labelText: 'Year',
                  border: const OutlineInputBorder(),
                  ),
                ),
                10.verticalSpace,
                TextField(
                  controller: degreeController,
                  decoration: const InputDecoration(labelText: 'Degree',
                  border: const OutlineInputBorder(),
                  ),
                ),
                10.verticalSpace,
                TextField(
                  controller: institutionController,
                  decoration: const InputDecoration(labelText: 'Institution',
                  border: OutlineInputBorder()
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  item['year'] = yearController.text;
                  item['degree'] = degreeController.text;
                  item['institution'] = institutionController.text;
                  educationColors[index] =
                      tempEducationColor; // Save selected color
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
