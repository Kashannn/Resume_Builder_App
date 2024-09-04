// save_information_controller.dart
import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SaveInformationController extends GetxController {
  var skills = <String>[].obs;
  var languages = <Map<String, dynamic>>[].obs;
  var image = Rx<File?>(null);
  final facebookController = TextEditingController();
  final instagramController = TextEditingController();
  final linkedinController = TextEditingController();
  final twitterController = TextEditingController();
  final portfolioController = TextEditingController();

  void addSkill(String skill) {
    skills.add(skill);
  }

  void removeSkill(String skill) {
    skills.remove(skill);
  }

  // Method to add a language
  void addLanguage(String language) {
    languages.add({'language': language, 'proficiency': 50.0});
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
}
