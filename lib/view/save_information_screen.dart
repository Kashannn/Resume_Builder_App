import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../Allcontrollers/save_info_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Allcontrollers/theme_changer_controller.dart';
import '../utils/components/custom_button.dart';
import '../utils/constant/app_textstyle_constant.dart';

class SaveInformationScreen extends StatelessWidget {
  final SaveInformationController controller = Get.put(SaveInformationController());

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChangerController>(context);
    bool isDarkMode = themeChanger.themeMode == ThemeMode.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      appBar: buildAppBar(isDarkMode),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildSectionTitle('Personal Information', isDarkMode),
            SizedBox(height: 20.h),
            buildPersonalInfoSection(isDarkMode),
            SizedBox(height: 20.h),
            buildTextField('Full Name', 'John Doe', isDarkMode, controller.fullNameController),
            buildTextField('About You', 'Tell something about yourself...', isDarkMode, controller.aboutController, maxLines: 7),
            buildTextField('Email Address', 'johndoe@gmail.com', isDarkMode, controller.emailController),
            buildTextField('Phone Number', 'e.g., +92 234-567-8901', isDarkMode, controller.phoneController),
            buildTextField('Address', '1234 Elm Street, Apt 5B, Springfield, IL 62704', isDarkMode, controller.addressController),
            SizedBox(height: 20.h),
            buildSocialLinksSection(isDarkMode),
            SizedBox(height: 20.h),
            buildSectionTitle('Work Experience', isDarkMode),
            buildTextField('Job Title', 'UI/UX Designer', isDarkMode, null), // Passing null for no controller
            buildTextField('Description', 'Describe your role...', isDarkMode, null, maxLines: 7), // Passing null for no controller
            SizedBox(height: 20.h),
            buildSectionTitle('Skills', isDarkMode),
            SizedBox(height: 10.h),
            buildSkillsList(isDarkMode),
            buildAddMoreButton('Add Skill', () {
              controller.addSkill('New Skill');
            }, isDarkMode),
            SizedBox(height: 20.h),
            buildSectionTitle('Languages', isDarkMode),
            SizedBox(height: 10.h),
            buildLanguagesList(isDarkMode),
            buildAddMoreButton('Add Language', () {
              controller.addLanguage('New Language');
            }, isDarkMode),
            SizedBox(height: 30.h),
            CustomGradientButton(
              onPressed: () {
                controller.saveDataLocally();
                Get.showSnackbar(GetSnackBar(
                  title: 'Success',
                  message: 'Your information has been saved!',
                  duration: Duration(seconds: 2),
                ));
                Get.back();
              },
              text: 'Save Info',
              gradient: LinearGradient(
                colors: [
                  Color(0xFF5BBBFF),
                  Color(0xFF005592),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            )
          ],
        ),
      ),
    );
  }

  // AppBar builder
  AppBar buildAppBar(bool isDarkMode) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Get.back();
        },
        color: isDarkMode ? Colors.white : Colors.black,
      ),
      title: Text(
        'Add Saved Info',
        style: GoogleFonts.montserrat(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: isDarkMode ? Colors.white : Colors.black,
        ),
      ),
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      elevation: 0,
    );
  }

  // Section title builder
  Widget buildSectionTitle(String title, bool isDarkMode) {
    return Text(
      title,
      style: GoogleFonts.montserrat(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: isDarkMode ? Colors.white : Colors.black,
      ),
    );
  }

  // Personal Information section with image picker
  Widget buildPersonalInfoSection(bool isDarkMode) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Obx(() {
          return CircleAvatar(
            radius: 40.r,
            backgroundColor: isDarkMode ? Colors.grey[800] : Colors.grey[200],
            backgroundImage: controller.image.value != null
                ? FileImage(controller.image.value!)
                : null,
            child: controller.image.value == null
                ? Image(
              image: AssetImage(AppImages.imagepicker),
            )
                : null,
          );
        }),
        buildGradientButton('Upload Photo',
            onTap: controller.pickImage, isDarkMode: isDarkMode),
      ],
    );
  }

  // Social Links Section with Editable Text Fields
  Widget buildSocialLinksSection(bool isDarkMode) {
    return Container(
      height: 450.h,
      decoration: BoxDecoration(
        color: isDarkMode ? Colors.grey[900] : Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(27.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildSectionTitle('Social Links', isDarkMode),
                Icon(Icons.expand_less,
                    color: isDarkMode ? Colors.white : Colors.blue), // Arrow icon
              ],
            ),
            SizedBox(height: 10.h),
            buildSocialLinkInputRow(FontAwesomeIcons.facebook, 'Facebook', controller.facebookController, isDarkMode),
            buildDivider(isDarkMode),
            buildSocialLinkInputRow(FontAwesomeIcons.instagram, 'Instagram', controller.instagramController, isDarkMode),
            buildDivider(isDarkMode),
            buildSocialLinkInputRow(FontAwesomeIcons.linkedin, 'LinkedIn', controller.linkedinController, isDarkMode),
            buildDivider(isDarkMode),
            buildSocialLinkInputRow(FontAwesomeIcons.twitter, 'Twitter', controller.twitterController, isDarkMode),
            buildDivider(isDarkMode),
            buildSocialLinkInputRow(FontAwesomeIcons.globe, 'Portfolio', controller.portfolioController, isDarkMode),
          ],
        ),
      ),
    );
  }

  Widget buildSkillsList(bool isDarkMode) {
    return Obx(() {
      return Column(
        children: controller.skills
            .map((skill) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            children: [
              Expanded(
                child: buildTextField('Skill', skill, isDarkMode, null), // Passing null for no controller
              ),
              IconButton(
                icon: Icon(Icons.delete_outline_rounded,
                    color: isDarkMode ? Colors.red : Colors.red),
                onPressed: () {
                  controller.removeSkill(skill);
                },
              ),
            ],
          ),
        ))
            .toList(),
      );
    });
  }

  Widget buildSocialLinkInputRow(IconData iconData, String label,
      TextEditingController controller, bool isDarkMode) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: isDarkMode ? Colors.grey[800] : Colors.grey[400],
          radius: 16.r,
          child: Icon(iconData, color: Colors.white, size: 18.sp),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: TextField(
            controller: controller,
            style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
            decoration: InputDecoration(
              hintText: 'Enter your $label link',
              hintStyle:
              TextStyle(color: isDarkMode ? Colors.grey : Colors.black54),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide:
                BorderSide(color: isDarkMode ? Colors.white : Colors.blue),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLanguagesList(bool isDarkMode) {
    return Obx(() {
      return Column(
        children: controller.languages
            .map((languageMap) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: buildTextField('Language', languageMap['language'], isDarkMode, null), // Passing null
                  ),
                  IconButton(
                    icon: Icon(Icons.delete,
                        color: isDarkMode ? Colors.red : Colors.red),
                    onPressed: () {
                      controller.removeLanguage(languageMap);
                    },
                  ),
                ],
              ),
              Text(
                'Proficiency Level: ${languageMap['proficiency'].round()}%',
                style: TextStyle(
                  fontSize: 14,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              Slider(
                value: languageMap['proficiency'],
                min: 0,
                max: 100,
                divisions: 5,
                label: '${languageMap['proficiency'].round()}%',
                onChanged: (value) {
                  controller.updateLanguageProficiency(
                      languageMap, value);
                },
                activeColor: isDarkMode ? Colors.blue : Colors.blue,
                inactiveColor:
                isDarkMode ? Colors.white24 : Colors.blueGrey,
              ),
            ],
          ),
        ))
            .toList(),
      );
    });
  }

  // Divider builder
  Widget buildDivider(bool isDarkMode) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Divider(
        color: isDarkMode ? Colors.white24 : Colors.blue,
        thickness: 1,
      ),
    );
  }

  // Gradient button builder
  Widget buildGradientButton(String text,
      {required VoidCallback onTap, required bool isDarkMode}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: 120.w,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isDarkMode
                ? [Color(0xFF3A3A3A), Color(0xFF000000)]
                : [Color(0xFF5BBBFF), Color(0xFF005592)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Center(
          child: Text(
            text,
            style: mStyleWhite12600,
          ),
        ),
      ),
    );
  }

  // Add more button builder
  Widget buildAddMoreButton(String text, VoidCallback onTap, bool isDarkMode) {
    return buildGradientButton(text, onTap: onTap, isDarkMode: isDarkMode);
  }

  // Text Field Builder
  Widget buildTextField(String label, String hint, bool isDarkMode, TextEditingController? controller, {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        maxLines: maxLines,
        controller: controller,
        style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: isDarkMode ? Colors.white : Colors.black,
        ),
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: isDarkMode ? Colors.white : Colors.blue,
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: isDarkMode ? Colors.white54 : Color(0xFF5BBBFF),
              width: 3.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: isDarkMode ? Colors.white : Colors.blue,
              width: 2.0,
            ),
          ),
          labelStyle: TextStyle(
            color: isDarkMode ? Colors.white : Colors.black,
            fontSize: 16.0,
          ),
          hintStyle: TextStyle(
            color: isDarkMode ? Colors.grey : Colors.grey,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
