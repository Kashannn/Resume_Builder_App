import 'dart:io';

import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Template9 extends StatefulWidget {
  const Template9({super.key});

  @override
  State<Template9> createState() => _Template9State();
}

class _Template9State extends State<Template9> {

  String userName = 'Emily Johnson';
  String jobTitle = 'UX/UI Designer';
  String email = 'hello@reallygreatsite.com';
  String phoneNumber = '+123-456-7890';
  String linkdin = 'www.linkedin.com';
  String website = 'www.mysite.com';
  String aboutMe = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.';

  //Skill
  List<String> skills = [
    'UI/UX',
    'Visual Design',
    'Wireframes',
    'Storyboarding',
    'User Flows'
  ];
  //Tools
  List<String> tools = [
    'Figma',
    'Adobe XD',
    'Adobe Photoshop',
    'Adobe Illustrator',
  ];

  List<Map<String, String>> experience = [
    {
      'company': 'Borcelle Studio',
      'position': 'Photographer',
      'years': '2021',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    },
    {
      'company': 'Creative Lens',
      'position': 'Assistant Photographer',
      'years': '2016',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    },
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


  String reference = 'John Smith - 123-456-7890';


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
    ScreenUtil.init(context, designSize: const Size(650, 1400));
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF333132),
        body: Column(
          children: [
            Row(
              children: [
                Material(
                  elevation: 2,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.r),
                  ),
                  child: Container(
                    width: 250.w,
                    height: 850.h,
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                        color: Color(0xFF333132),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.r),
                        )),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                          child: CircleAvatar(
                            radius: 93.r,
                            backgroundColor: Color(0xFFFFA200),
                            child: GestureDetector(
                              onTap: _pickImage,
                              child: CircleAvatar(
                                radius: 90.h,
                                backgroundImage: _profileImage != null
                                    ? FileImage(_profileImage!)
                                    : AssetImage(AppImages.profilePicture)
                                as ImageProvider,
                              ),
                            ),
                          ),
                        ),
                        10.verticalSpace,
                        Container(
                          width: 200.w,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: ()=>_editContactDetails(context),
                                child: Column(


                                  children: [

                                    Row(
                                      children: [
                                        SvgPicture.asset(AppImages.user,
                                            width: 25.sp, height: 25.sp
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          'Contact',
                                          style: GoogleFonts.lato(
                                            fontSize: 20.sp,
                                            color: Colors.orange,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                      thickness: 1.5.h,
                                      indent: 20.w,
                                      endIndent: 20.w,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5.h, horizontal: 20.w),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            color: Colors.orange,
                                            size: 22.sp,
                                          ),
                                          SizedBox(width: 10.w),
                                          Expanded(
                                            child: Text(
                                              phoneNumber,
                                              style: GoogleFonts.lato(
                                                fontSize: 14.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8.h, horizontal: 20.w),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.link,
                                            color: Colors.orange,
                                            size: 22.sp,
                                          ),
                                          SizedBox(width: 10.w),
                                          Expanded(
                                            child: Text(
                                              linkdin,
                                              style: GoogleFonts.lato(
                                                fontSize: 14.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8.h, horizontal: 20.w),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.email,
                                            color: Colors.orange,
                                            size: 22.sp,
                                          ),
                                          SizedBox(width: 10.w),
                                          Expanded(
                                            child: Text(
                                              email,
                                              style: GoogleFonts.lato(
                                                fontSize: 14.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8.h, horizontal: 20.w),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.web,
                                            color: Colors.orange,
                                            size: 22.sp,
                                          ),
                                          SizedBox(width: 10.w),
                                          Expanded(
                                            child: Text(
                                              website,
                                              style: GoogleFonts.lato(
                                                fontSize: 14.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.h),
                              Row(
                                children: [
                                  SvgPicture.asset(AppImages.skill,
                                      width: 20.sp, height: 20.sp
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'Skills',
                                    style: GoogleFonts.lato(
                                      fontSize: 20.sp,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 1.5.h,
                                indent: 20.w,
                                endIndent: 20.w,
                              ),
                              Column(
                                children: skills.map((skill) {
                                  return GestureDetector(
                                    onTap: ()=> _showSkillsEditDialog(),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 20.w),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            color: Colors.orange,
                                            size: 8.sp,
                                          ),
                                          SizedBox(width: 10.w),
                                          Expanded(
                                            child: Text(
                                              skill,
                                              style: GoogleFonts.lato(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                children: [
                                  SvgPicture.asset(AppImages.tool,
                                      width: 20.sp, height: 20.sp
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'Tools',
                                    style: GoogleFonts.lato(
                                      fontSize: 20.sp,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.grey,
                                thickness: 1.5.h,
                                indent: 20.w,
                                endIndent: 20.w,
                              ),
                              Column(
                                children: tools.map((skill) {
                                  return GestureDetector(
                                    onTap: ()=> _showToolsEditDialog(),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 20.w),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            color: Colors.orange,
                                            size: 8.sp,
                                          ),
                                          SizedBox(width: 10.w),
                                          Expanded(
                                            child: Text(
                                              skill,
                                              style: GoogleFonts.lato(
                                                fontSize: 16.sp,
                                                color: Colors.white,
                                              ),
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
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 366.w,
                  //height: 850..h,
                  color: Colors.grey[700],
                  child: Column(
                    children: [
                      Container(
                        width: 366.w,
                        height: 200.h,
                        color: Colors.grey[800],
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 24.h),
                        child: GestureDetector(
                          onTap: ()=>_editUserDetails(context),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                userName,
                                style: GoogleFonts.lato(
                                  fontSize: 36.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                jobTitle,
                                style: GoogleFonts.lato(
                                  fontSize: 20.sp,
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 366.w,
                        height: 654.h,
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            10.verticalSpace,
                            // Personal Profile Section
                            Text(
                              'Personal Profile',
                              style: GoogleFonts.lato(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Divider(color: Colors.black),
                            GestureDetector(
                              onTap: ()=>_editAbout(context),
                              child: Text(
                                aboutMe,
                                style: GoogleFonts.lato(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ),

                            22.verticalSpace,
                            // Work Experience Section
                            Text(
                              'Work Experience',
                              style: GoogleFonts.lato(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Divider(color: Colors.black),
                            Column(
                              children: experience.map((exp) {
                                return GestureDetector(
                                  onTap: ()=>_editExperienceItem(context,exp),
                                  child: _buildWorkExperienceItem(
                                    position: exp['position'] ?? 'Unknown Position',
                                    company: exp['company'] ?? 'Unknown Company',
                                    duration: exp['years'] ?? 'Unknown Duration',
                                    description: exp['description'] ?? 'No description provided',
                                  ),
                                );
                              }).toList(),
                            ),
                            // Education Section
                            Text(
                              'Education',
                              style: GoogleFonts.lato(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Divider(color: Colors.black),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: education.map((edu) {
                                int index = education.indexOf(edu);
                                return GestureDetector(
                                  onTap: ()=>_editEducationItem(context,edu),
                                  child: _buildEducationItem(
                                    degree: edu['degree'] ?? 'Unknown Degree',
                                    institution: edu['institution'] ?? 'Unknown Institution',
                                    duration: edu['years'] ?? 'Unknown Duration',
                                  ),
                                );
                              }).toList(),
                            ),

                            // Referees Section
                            Text(
                              'Referees',
                              style: GoogleFonts.lato(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Divider(color: Colors.black),
                            GestureDetector(
                              onTap:()=>_editRefernce(),
                              child: Text(
                                reference,
                                style: GoogleFonts.lato(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildWorkExperienceItem({
    required String position,
    required String company,
    required String duration,
    required String description,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$position | $company',
                style: GoogleFonts.lato(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                duration,
                style: GoogleFonts.lato(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            description,
            style: GoogleFonts.lato(
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
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
      padding: EdgeInsets.only(bottom: 18.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            degree,
            style: GoogleFonts.lato(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            institution,
            style: GoogleFonts.lato(
              fontSize: 13.sp,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            duration,
            style: GoogleFonts.lato(
              fontSize: 13.sp,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  void _editUserDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final TextEditingController nameController =
        TextEditingController(text: userName);
        final TextEditingController roleController =
        TextEditingController(text: jobTitle);

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
                  jobTitle = roleController.text;
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

  Future<List<String>?> _showToolsEditDialog() async {
    final skillsController = TextEditingController(text: tools.join(', '));

    return await showDialog<List<String>>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Tools'),
          content: TextField(
            controller: skillsController,
            decoration: InputDecoration(
              labelText: 'Tools (comma separated)',
            ),
            maxLines: 5,
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  tools = skillsController.text
                      .split(',')
                      .map((s) => s.trim())
                      .where((s) => s.isNotEmpty) // filter out any empty skills
                      .toList();
                });
                Navigator.pop(context, tools);
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

  void _editRefernce() async {
    final newLocation = await _editField('Refernce', reference);
    if (newLocation != null) {
      setState(() {
        reference = newLocation;
      });
    }
  }

  Future<String?> _editField(String field, String initialValue) async {
    TextEditingController controller =
    TextEditingController(text: initialValue);
    return await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit $field'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter $field',
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('SAVE'),
              onPressed: () {
                Navigator.of(context).pop(controller.text);
              },
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
        final TextEditingController webisteController =
        TextEditingController(text: website);
        final TextEditingController linkdeinController =
        TextEditingController(text: linkdin);

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
                controller: linkdeinController,
                decoration: const InputDecoration(labelText: 'Linkedin'),
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
                  phoneNumber = phoneController.text;
                  email = emailController.text;
                  website = webisteController.text;
                  linkdin = linkdeinController.text;
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

}
