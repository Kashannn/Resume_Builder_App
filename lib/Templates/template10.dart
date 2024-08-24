import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/constant/app_colors.dart';
import '../utils/constant/app_images_constant.dart';
import '../utils/constant/app_textstyle_constant.dart';

class Template10 extends StatefulWidget {
  const Template10({super.key});

  @override
  State<Template10> createState() => _Template10State();
}

class _Template10State extends State<Template10> {
  String name = 'John Carter';
  String jobTitle = 'Digital Marketing';

  void _showEditDialog(String fieldType) {
    TextEditingController controller = TextEditingController();

    if (fieldType == 'name') {
      controller.text = name;
    } else if (fieldType == 'jobTitle') {
      controller.text = jobTitle;
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit $fieldType'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter new $fieldType',
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  if (fieldType == 'name') {
                    name = controller.text;
                  } else if (fieldType == 'jobTitle') {
                    jobTitle = controller.text;
                  }
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColorsTemplate10.lightGray,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage(AppImages.profilePicture),
                        ),
                        SizedBox(width: 10.w),
                        GestureDetector(
                          onTap: () => _showEditDialog('name'),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                name,
                                style: AppTextStylesTemplate10.nameStyle,
                              ),
                              Text(
                                jobTitle,
                                style: AppTextStylesTemplate10.jobTitleStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact:',
                              style: AppTextStylesTemplate10.contactLabelStyle,
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  color: AppColorsTemplate10.contactText,
                                  size: 10.0,
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  'contact@entreprenur.com',
                                  style:
                                      AppTextStylesTemplate10.contactInfoStyle,
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: AppColorsTemplate10.contactText,
                                  size: 10.0,
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  '(443) 212 - 6501',
                                  style:
                                      AppTextStylesTemplate10.contactInfoStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Divider(color: AppColorsTemplate10.divider, thickness: 4.h),
                SizedBox(height: 10.h),
                Container(
                  width: 545.w,
                  height: 46.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'About Me',
                        style: AppTextStylesTemplate10.sectionTitleStyle,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SizedBox(
                        width: 240.w,
                        height: 51.h,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vel eu vulputate et id morbi proin quam eget aliquam pellentesque congue massa mattis fringilla platea.',
                          style: AppTextStylesTemplate10.descriptionTextStyle,
                          textAlign: TextAlign.justify,
                          maxLines: 4,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  width: 340.w,
                  height: 229.h,
                  child: Row(
                    children: [
                      Text(
                        'Work Experience',
                        style: AppTextStylesTemplate10.sectionTitleStyle,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildExperienceRow(
                              'VP of Marketing', '2019 - Present'),
                          buildDescriptionText(
                            'Ut in orci suspendisse aliquet justo in faucibus sed lobortis. Semper facilisi non sed interdum ipsum fusce at nisi.',
                          ),
                          buildExperienceRow(
                              'Head of Marketing', '2018 - 2019'),
                          buildDescriptionText(
                            'Id eget faucibus neque tristique ut mi duis nec cursus posuere donec non sagittis pretium tortor ac cursus eget bibendum.',
                          ),
                          buildExperienceRow('Growth Hacker', '2017 - 2018'),
                          buildDescriptionText(
                            'Nec commodo nulla diam tellus sit sem lorem amet pharetra, sed gravida lectus phasellus in libero nam pulvinar suscipit.',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60.h,
                ),
                Container(
                  width: 310.w,
                  height: 130.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Education',
                        style: AppTextStylesTemplate10.sectionTitleStyle,
                      ),
                      Column(
                        children: [
                          buildEducationRow(
                            '2018 - 2021',
                            'B.S of Business and Markeing',
                            'University of Oxford.',
                          ),
                          buildEducationRow(
                            '2015 - 2018',
                            'B.S of Digital Marketing',
                            'University of Oxford.',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  width: 530.w,
                  height: 73.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Skills',
                        style: AppTextStylesTemplate10.sectionTitleStyle,
                      ),
                      Column(
                        children: [
                          buildSkillsRow(),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildExperienceRow(String title, String duration) {
    return SizedBox(
      width: 190.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStylesTemplate10.experienceTitleStyle,
          ),
          Text(
            duration,
            style: AppTextStylesTemplate10.experienceDurationStyle,
          ),
        ],
      ),
    );
  }

  Widget buildDescriptionText(String text) {
    return SizedBox(
      width: 220.w,
      child: Text(
        text,
        style: AppTextStylesTemplate10.descriptionTextStyle,
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget buildEducationRow(String years, String degree, String university) {
    return SizedBox(
      width: 200.w,
      height: 60.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            years,
            style: AppTextStylesTemplate10.educationTextStyle,
          ),
          SizedBox(height: 7.h),
          Text(
            degree,
            style: AppTextStylesTemplate10.degreeTextStyle,
          ),
          SizedBox(height: 7.h),
          Text(
            university,
            style: AppTextStylesTemplate10.educationTextStyle,
          ),
        ],
      ),
    );
  }

  Widget buildSkillsRow() {
    return SizedBox(
      width: 250.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '• Growth Marketing',
                style: AppTextStylesTemplate10.skillTextStyle,
              ),
              SizedBox(height: 10.0),
              Text(
                '• Optimization',
                style: AppTextStylesTemplate10.skillTextStyle,
              ),
              SizedBox(height: 10.0),
              Text(
                '• Data Analysis',
                style: AppTextStylesTemplate10.skillTextStyle,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '• Strategy for B2B',
                style: AppTextStylesTemplate10.skillTextStyle,
              ),
              SizedBox(height: 10.0),
              Text(
                '• Social Media',
                style: AppTextStylesTemplate10.skillTextStyle,
              ),
              SizedBox(height: 10.0),
              Text(
                '• SEO & SEM',
                style: AppTextStylesTemplate10.skillTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
