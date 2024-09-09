import 'dart:io';

import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Template10 extends StatefulWidget {
  const Template10({super.key});

  @override
  State<Template10> createState() => _Template10State();
}

class _Template10State extends State<Template10> {
  Color firstNameColor = Colors.grey[800]!;
  Color lastNameColor = Color(0xFF5A00E0);
  Color userRoleColor = Colors.grey[700]!;
  String firstName = 'Folly';
  String lastName = 'Justin';
  String userRole = 'Photographer';
  String email = 'hello@justinphotographer.com';
  String phoneNumber = '+123-456-7890';
  String location = '123 Anywhere St., Any City';
  String website = 'www.yourwebsite.com';
  String linkedin = 'www.linkedin.com';
  String dribbble = 'www.dribbble.com';
  String behance = 'www.behance.com';

  final List<String> textItems = [
    'User Interface',
    'User Experience',
    'Product Design',
    'Interaction Design',
    'Design Research',
    'Web Design',
  ];

  final List<String> languages = [
    'English',
    'Hindi',
    'French',
  ];

  final List<Map<String, String>> experiences = [
    {
      'title': 'Senior UI Designer',
      'details': 'Blue Moon Consultancy Studio',
      'fromto': 'Aug 2020 - Present',
      'description':
          'Product team to prototype, design and deliver the UI and UX experience with a lean design process: research, design, test, and iterate.',
    },
    {
      'title': 'Senior UX Designer',
      'details': 'Black Yark Product Design',
      'fromto': 'Aug 2015 - Aug 2020',
      'description':
          'Lead the UI design with the accountability of the design system, collaborated with product and development teams on core projects to improve product interfaces and experiences.',
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
    ScreenUtil.init(context, designSize: const Size(650, 1400));
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 650.w,
          // height: 842.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF0338F4),
                Color(0xFFE025CE),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Container(
                  width: 310.w,
                  // height: 842.h,
                  // color: Colors.yellow,
                  child: Column(
                    children: [
                      Container(
                        //height: 133.h,
                        // width: 298.w,
                        color: Colors.white,
                        child: Row(
                          children: [
                            // Profile Image
                            Padding(
                              padding: EdgeInsets.all(8.w),
                              child: GestureDetector(
                                onTap: _pickImage,
                                child: CircleAvatar(
                                  radius: 60.h,
                                  backgroundImage: _profileImage != null
                                      ? FileImage(_profileImage!)
                                      : AssetImage(AppImages.t10)
                                          as ImageProvider,
                                ),
                              ),
                            ),
                            SizedBox(width: 12.w),
                            GestureDetector(
                              onTap: () => _editUserDetails(context),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    firstName,
                                    style: GoogleFonts.lato(
                                      fontSize: 30.sp,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          firstNameColor, // Dynamic color for first name
                                    ),
                                  ),
                                  Text(
                                    lastName,
                                    style: GoogleFonts.lato(
                                      fontSize: 38.sp,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          lastNameColor, // Dynamic color for last name
                                    ),
                                  ),
                                  Text(
                                    userRole,
                                    style: GoogleFonts.lato(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          userRoleColor, // Dynamic color for role
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 290.w,
                        //height: 655.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF0338F4),
                              Color(0xFFE025CE),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () => _editContactDetails(context),
                              child: Column(
                                children: [
                                  _buildContactInfo(
                                    icon: Icons.email,
                                    text: email,
                                  ),
                                  _buildContactInfo(
                                    icon: Icons.phone,
                                    text: phoneNumber,
                                  ),
                                  _buildContactInfo(
                                    icon: Icons.web,
                                    text: website,
                                  ),
                                  _buildContactInfo(
                                    icon: Icons.location_on,
                                    text: location,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 290.w,
                                    decoration: BoxDecoration(
                                      color:
                                          Color(0xFFC4C4C4).withOpacity(0.25),
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        _buildSectionTitle(
                                            'Industry Knowledge'),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: textItems.map((item) {
                                            int index = textItems.indexOf(item);
                                            return GestureDetector(
                                                onTap: () => _editItemsDialog(
                                                    context, index, item),
                                                child: _buildTextItem(item));
                                          }).toList(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  Container(
                                      width: 290.w,
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xFFC4C4C4).withOpacity(0.25),
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          _buildSectionTitle('Languages'),
                                          Column(
                                            children: languages.map((item) {
                                              int index =
                                                  languages.indexOf(item);
                                              return GestureDetector(
                                                  onTap: () =>
                                                      _editLanguagesDialog(
                                                          context, index, item),
                                                  child: _buildTextItem(item));
                                            }).toList(),
                                          ),
                                        ],
                                      )),
                                  SizedBox(height: 8.h),
                                  Container(
                                      width: 290.w,
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xFFC4C4C4).withOpacity(0.25),
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () =>
                                                _editSocialDetails(context),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                _buildSectionTitle('Social'),
                                                _buildTextItem(website),
                                                _buildTextItem(linkedin),
                                                _buildTextItem(dribbble),
                                                _buildTextItem(behance),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            _buildSectionTitle('Hobbies'),
                            _buildHobbiesRow(),
                            SizedBox(height: 5.h),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 305.w,
                //height: 84.h,
                // color: Colors.yellow,
                padding: EdgeInsets.only(right: 10.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: 297.w,
                      height: 300.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.r),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Experience Header
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 20.h),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4.h, horizontal: 8.w),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                  child: Text(
                                    "EXPERIENCE",
                                    style: GoogleFonts.lato(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 180.w,
                                  height: 2.h,
                                  color: Colors.grey[400],
                                ),
                              ],
                            ),
                          ),
                          // Experience Item 1
                          Column(
                            children: experiences.map((experience) {
                              return GestureDetector(
                                onTap: () =>
                                    _editExperienceItem(context, experience),
                                child: _buildExperienceItem(
                                  company: experience['details']!,
                                  title: experience['title']!,
                                  duration: experience['fromto']!,
                                  location: '',
                                  description: experience['description']!,
                                ),
                              );
                            }).toList(),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 297.w,
                      height: 190.h,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Education Header
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 20.h),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4.h, horizontal: 8.w),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                  child: Text(
                                    "EDUCATION",
                                    style: GoogleFonts.lato(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 184.w,
                                  height: 2.h,
                                  color: Colors.grey[400],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: education.map((edu) {
                              int index = education.indexOf(edu);
                              return GestureDetector(
                                onTap: () => _editEducationItem(context, edu),
                                child: _buildEducationItem(
                                  degree: edu['degree']!,
                                  institution: edu['institution']!,
                                  duration: edu['year']!,
                                ),
                              );
                            }).toList(),
                          )

                          // Skills List (you can replace this with actual skill items)
                        ],
                      ),
                    ),
                    Container(
                      width: 297.w,
                      height: 222.h,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Skills Header
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 8.h),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4.h, horizontal: 8.w),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                  child: Text(
                                    "MY SKILLS",
                                    style: GoogleFonts.lato(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 195.w,
                                  height: 2.h,
                                  color: Colors.grey[400],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.h),
                          // Skills Icons and Labels
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: Wrap(
                              spacing: 15.w,
                              runSpacing: 15.h,
                              children: [
                                _buildSkillItem('Figma', AppImages.Figma10),
                                _buildSkillItem('Adobe Photoshop',
                                    AppImages.Adobephotoshop10),
                                _buildSkillItem('Adobe illustrator',
                                    AppImages.Adobeillustrator10),
                                _buildSkillItem(
                                    'Adobe Xd', AppImages.Adobexd10),
                                _buildSkillItem('Adobe indesign',
                                    AppImages.Adobeindesign10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 297.w,
                      height: 122.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30.r),
                          bottomLeft: Radius.circular(30.r),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 8.h),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4.h, horizontal: 8.w),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[800],
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                  child: Text(
                                    "OTHER SKILLS",
                                    style: GoogleFonts.lato(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 175.w,
                                  height: 2.h,
                                  color: Colors.grey[400],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.h),
                          // Skills Icons and Labels
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _buildOtherSkillItem('HTML 5', AppImages.html),
                                _buildOtherSkillItem('css 3', AppImages.Css10),
                                _buildOtherSkillItem(
                                    'Javascript', AppImages.Javascript10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
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
        final TextEditingController positionController =
            TextEditingController(text: item['detail']);
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
                  item['title'] = titleController.text;
                  item['detail'] = positionController.text;
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

  void _editUserDetails(BuildContext context) {
    TextEditingController firstNameController =
        TextEditingController(text: firstName);
    TextEditingController lastNameController =
        TextEditingController(text: lastName);
    TextEditingController roleController =
        TextEditingController(text: userRole);

    Color tempFirstNameColor = firstNameColor;
    Color tempLastNameColor = lastNameColor;
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
                      controller: firstNameController,
                      decoration: InputDecoration(labelText: 'First Name'),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'First Name Color',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var color in [
                          Colors.black,
                          Colors.blue,
                          Colors.red,
                          Colors.green,
                          Colors.orange,
                          Colors.purple,
                          Colors.teal,
                          Colors.yellow,
                        ])
                          GestureDetector(
                            onTap: () {
                              setStateDialog(() {
                                tempFirstNameColor = color;
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: color,
                              radius: 15,
                              child: tempFirstNameColor == color
                                  ? Icon(Icons.check,
                                      color: Colors.white, size: 16)
                                  : SizedBox.shrink(),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: lastNameController,
                      decoration: InputDecoration(labelText: 'Last Name'),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Last Name Color',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var color in [
                          Colors.black,
                          Colors.blue,
                          Colors.red,
                          Colors.green,
                          Colors.orange,
                          Colors.purple,
                          Colors.teal,
                          Colors.yellow,
                        ])
                          GestureDetector(
                            onTap: () {
                              setStateDialog(() {
                                tempLastNameColor = color;
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: color,
                              radius: 15,
                              child: tempLastNameColor == color
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
                      decoration: InputDecoration(labelText: 'Role'),
                    ),
                    SizedBox(height: 10),
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
                          Colors.black,
                          Colors.blue,
                          Colors.red,
                          Colors.green,
                          Colors.orange,
                          Colors.purple,
                          Colors.teal,
                          Colors.yellow,
                        ])
                          GestureDetector(
                            onTap: () {
                              setStateDialog(() {
                                tempUserRoleColor = color;
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
                      firstName = firstNameController.text;
                      lastName = lastNameController.text;
                      userRole = roleController.text;
                      firstNameColor = tempFirstNameColor;
                      lastNameColor = tempLastNameColor;
                      userRoleColor = tempUserRoleColor;
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

  void _editSocialDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController wsController =
            TextEditingController(text: website);
        final TextEditingController ldController =
            TextEditingController(text: linkedin);
        final TextEditingController drController =
            TextEditingController(text: dribbble);
        final TextEditingController bhController =
            TextEditingController(text: behance);
        return AlertDialog(
          title: const Text('Edit Social Details'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: wsController,
                decoration: const InputDecoration(labelText: 'Website'),
              ),
              TextField(
                controller: ldController,
                decoration: const InputDecoration(labelText: 'Linkedin'),
              ),
              TextField(
                controller: drController,
                decoration: const InputDecoration(labelText: 'Dribbble'),
              ),
              TextField(
                controller: bhController,
                decoration: const InputDecoration(labelText: 'Behance'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  website = wsController.text;
                  linkedin = ldController.text;
                  dribbble = drController.text;
                  behance = bhController.text;
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

  Future<void> _editItemsDialog(
      BuildContext context, int index, String currentName) async {
    TextEditingController nameController =
        TextEditingController(text: currentName);
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Knowledge Item'),
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
                  textItems[index] = newName;
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

  Future<void> _editLanguagesDialog(
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

  void _editContactDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController phoneController =
            TextEditingController(text: phoneNumber);
        final TextEditingController emailController =
            TextEditingController(text: email);
        final TextEditingController websiteController =
            TextEditingController(text: website);
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
                controller: websiteController,
                decoration: const InputDecoration(labelText: 'Website'),
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
                  phoneNumber = phoneController.text;
                  website = websiteController.text;
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

  Widget _buildOtherSkillItem(String skill, String imagePath) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            width: 50.w,
            height: 50.h,
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
              border: Border.all(
                color: Colors.blue,
                width: 2.w,
              ),
            ),
            child: SvgPicture.asset(
              imagePath,
            )),
        SizedBox(height: 4.h),
        Text(
          skill,
          style: GoogleFonts.lato(
            fontSize: 10.sp,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildSkillItem(String skill, String imagePath) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            width: 50.w,
            height: 50.h,
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
              border: Border.all(
                color: Colors.blue,
                width: 2.w,
              ),
            ),
            child: SvgPicture.asset(
              imagePath,
            )),
        SizedBox(height: 4.h),
        Text(
          skill,
          style: GoogleFonts.lato(
            fontSize: 10.sp,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

Widget _buildContactInfo({required IconData icon, required String text}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFFC4C4C4).withOpacity(0.25),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 15.sp,
            ),
            SizedBox(width: 8.w),
            Text(
              text,
              style: TextStyle(
                fontFamily: //calibri font
                    GoogleFonts.lato().fontFamily,
                fontSize: 13.sp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildSectionTitle(String title) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
    child: Text(
      title,
      style: GoogleFonts.lato(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}

Widget _buildTextItem(String text) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 2.9.h),
    child: Text(
      '• $text',
      style: GoogleFonts.lato(
        fontSize: 14.sp,
        color: Colors.white,
      ),
    ),
  );
}

Widget _buildHobbiesRow() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildHobbyIcon(Icons.book, 'Reading'),
        _buildHobbyIcon(Icons.directions_walk, 'Dance'),
        _buildHobbyIcon(Icons.mic, 'Singing'),
        _buildHobbyIcon(Icons.sports_soccer, 'Football'),
      ],
    ),
  );
}

Widget _buildHobbyIcon(IconData icon, String label) {
  return Column(
    children: [
      Icon(icon, color: Colors.white, size: 24.sp),
      SizedBox(height: 4.h),
      Text(
        label,
        style: GoogleFonts.lato(
          fontSize: 12.sp,
          color: Colors.white,
        ),
      ),
    ],
  );
}

Widget _buildExperienceItem({
  required String company,
  required String title,
  required String duration,
  required String location,
  required String description,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          company,
          style: GoogleFonts.lato(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          title,
          style: GoogleFonts.lato(
            fontSize: 14.sp,
            color: Colors.black54,
          ),
        ),
        Text(
          "$duration - $location",
          style: GoogleFonts.lato(
            fontSize: 12.sp,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          description,
          style: GoogleFonts.lato(
            fontSize: 12.sp,
            color: Colors.black87,
          ),
          textAlign: TextAlign.justify,
        ),
        10.verticalSpace,
      ],
    ),
  );
}

Widget _buildEducationItem({
  required String degree,
  required String institution,
  required String duration,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          degree,
          style: GoogleFonts.lato(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          institution,
          style: GoogleFonts.lato(
            fontSize: 14.sp,
            color: Colors.black54,
          ),
        ),
        Text(
          duration,
          style: GoogleFonts.lato(
            fontSize: 12.sp,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(height: 10.h),
      ],
    ),
  );
}
