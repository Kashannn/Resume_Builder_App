import 'package:cvapp/utils/components/custom_bottom_navigation_bar.dart';
import 'package:cvapp/utils/constant/app_colors.dart';
import 'package:cvapp/view/resume_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/components/custom_button.dart';
import '../utils/constant/app_images_constant.dart';
import '../utils/constant/app_textstyle_constant.dart';
import 'customize_template_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imagePaths = [
    AppImages.template1,
    AppImages.template2,
    AppImages.template3,
    AppImages.template4,
    AppImages.template5,
    AppImages.template6,
    AppImages.template7,
    AppImages.template8,
    AppImages.template9,
    AppImages.template10,
    AppImages.template11,
    AppImages.template12,
    AppImages.template13,
    AppImages.template14,
    AppImages.template15,
    AppImages.template16,
    AppImages.template17,
    AppImages.template18,
    AppImages.template19,
  ];

  String selectedTemplate = 'All';

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'CV Maker',
                    style: isDarkMode ? mStyleWhite20600 : mStyleBlack20600,
                  ),

                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Templates',
                    style: isDarkMode ? mStyleWhite16600 : mStyleBlack16600,
                  ),
                  PopupMenuButton<String>(
                    icon: Icon(
                      Icons.more_vert,
                      color: isDarkMode ? Colors.white : AppColors.blackColor,
                    ),
                    onSelected: (String value) {
                      setState(() {
                        selectedTemplate = value;
                      });
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'All',
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('All',
                                style: isDarkMode
                                    ? mStyleWhite16600
                                    : mStyleBlack16600),
                            Radio<String>(
                              value: 'All',
                              groupValue: selectedTemplate,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedTemplate = value!;
                                });
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Professional',
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Professional',
                                style: isDarkMode
                                    ? mStyleWhite16600
                                    : mStyleBlack16600),
                            Radio<String>(
                              value: 'Professional',
                              groupValue: selectedTemplate,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedTemplate = value!;
                                });
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: 'Modern',
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Modern',
                                style: isDarkMode
                                    ? mStyleWhite16600
                                    : mStyleBlack16600),
                            Radio<String>(
                              value: 'Modern',
                              groupValue: selectedTemplate,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedTemplate = value!;
                                });
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: GridView.builder(
                  itemCount: imagePaths.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                    childAspectRatio: 193.w / 250.h,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => CustomizeTemplateScreen(
                              imagePaths: imagePaths,
                              initialIndex: index,
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isDarkMode ? Color(0xFF151A25) : Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            imagePaths[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
