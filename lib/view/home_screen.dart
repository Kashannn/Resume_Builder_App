import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../utils/constant/app_colors.dart';
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
    AppImages.template20,
  ];

  String selectedTemplate = 'All';

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(393, 855));
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    List<String> filteredTemplates = _getFilteredTemplates();
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
                    icon: Container(
                      padding: EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        AppImages.homemenubar,
                        color: isDarkMode ? Colors.white : AppColors.blackColor,
                      ),
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
                  )
                ],
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: GridView.builder(
                  itemCount: filteredTemplates.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                    childAspectRatio: 193.w / 300.h,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => CustomizeTemplateScreen(
                              imagePaths: filteredTemplates,
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
                          borderRadius: BorderRadius.circular(
                              10.r), // Ensures rounded corners
                          child: Image.asset(
                            filteredTemplates[index],
                            fit: BoxFit
                                .contain, // Ensures the entire image is visible and not cut off
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
      ),
    );
  }

  List<String> _getFilteredTemplates() {
    if (selectedTemplate == 'All') {
      return imagePaths;
    } else if (selectedTemplate == 'Professional') {
      return imagePaths.sublist(0, 10);
    } else if (selectedTemplate == 'Modern') {
      return imagePaths.sublist(10, 20);
    } else {
      return imagePaths;
    }
  }
}
