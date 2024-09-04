import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class SaveInformationController extends GetxController {
  var skills = <String>[].obs; // List of skills
  var languages = <Map<String, dynamic>>[].obs; // List of languages with proficiency
  var image = Rx<File?>(null);

  // TextEditingControllers for text fields
  final facebookController = TextEditingController();
  final instagramController = TextEditingController();
  final linkedinController = TextEditingController();
  final twitterController = TextEditingController();
  final portfolioController = TextEditingController();
  final fullNameController = TextEditingController();
  final aboutController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();

  // Method to add a skill
  void addSkill(String skill) {
    skills.add(skill);
  }

  // Method to remove a skill
  void removeSkill(String skill) {
    skills.remove(skill);
  }

  // Method to add a language
  void addLanguage(String language) {
    languages.add({'language': language, 'proficiency': 50.0}); // Default proficiency 50%
  }

  // Method to remove a language
  void removeLanguage(Map<String, dynamic> language) {
    languages.remove(language);
  }

  // Method to update language proficiency
  void updateLanguageProficiency(Map<String, dynamic> language, double proficiency) {
    language['proficiency'] = proficiency;
    languages.refresh();
  }

  // Method to pick an image from gallery
  Future<void> pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      image.value = File(pickedFile.path);
    }
  }

  // Save the data locally using SharedPreferences
  Future<void> saveDataLocally() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Save all form data to SharedPreferences
    await prefs.setString('fullName', fullNameController.text);
    await prefs.setString('about', aboutController.text);
    await prefs.setString('email', emailController.text);
    await prefs.setString('phone', phoneController.text);
    await prefs.setString('address', addressController.text);

    // Save social media links
    await prefs.setString('facebook', facebookController.text);
    await prefs.setString('instagram', instagramController.text);
    await prefs.setString('linkedin', linkedinController.text);
    await prefs.setString('twitter', twitterController.text);
    await prefs.setString('portfolio', portfolioController.text);

    // Save skills and languages as JSON strings
    await prefs.setString('skills', jsonEncode(skills.toList())); // Skills to JSON
    await prefs.setString('languages', jsonEncode(languages.toList())); // Languages to JSON

    // Optionally save image path if needed (image path only)
    if (image.value != null) {
      await prefs.setString('profileImagePath', image.value!.path);
    }
  }

  // Load the saved data
  Future<void> loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    fullNameController.text = prefs.getString('fullName') ?? '';
    aboutController.text = prefs.getString('about') ?? '';
    emailController.text = prefs.getString('email') ?? '';
    phoneController.text = prefs.getString('phone') ?? '';
    addressController.text = prefs.getString('address') ?? '';

    facebookController.text = prefs.getString('facebook') ?? '';
    instagramController.text = prefs.getString('instagram') ?? '';
    linkedinController.text = prefs.getString('linkedin') ?? '';
    twitterController.text = prefs.getString('twitter') ?? '';
    portfolioController.text = prefs.getString('portfolio') ?? '';

    // Decode the skills and languages
    skills.value = (jsonDecode(prefs.getString('skills') ?? '[]') as List<dynamic>)
        .map((skill) => skill.toString())
        .toList();

    languages.value = (jsonDecode(prefs.getString('languages') ?? '[]') as List<dynamic>)
        .map((lang) => lang as Map<String, dynamic>)
        .toList();

    // Load the profile image if saved
    String? imagePath = prefs.getString('profileImagePath');
    if (imagePath != null && imagePath.isNotEmpty) {
      image.value = File(imagePath);
    }
  }
}
