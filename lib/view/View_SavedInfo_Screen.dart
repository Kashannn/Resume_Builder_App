import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class ViewSavedInfoScreen extends StatefulWidget {
  @override
  _ViewSavedInfoScreenState createState() => _ViewSavedInfoScreenState();
}

class _ViewSavedInfoScreenState extends State<ViewSavedInfoScreen> {
  String fullName = '';
  String about = '';
  String email = '';
  String phone = '';
  String address = '';
  String facebook = '';
  String instagram = '';
  String linkedin = '';
  String twitter = '';
  String portfolio = '';
  List<String> skills = [];
  List<Map<String, dynamic>> languages = [];

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  // Load saved data from SharedPreferences
  Future<void> _loadSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      fullName = prefs.getString('fullName') ?? '';
      about = prefs.getString('about') ?? '';
      email = prefs.getString('email') ?? '';
      phone = prefs.getString('phone') ?? '';
      address = prefs.getString('address') ?? '';

      // Load social links
      facebook = prefs.getString('facebook') ?? '';
      instagram = prefs.getString('instagram') ?? '';
      linkedin = prefs.getString('linkedin') ?? '';
      twitter = prefs.getString('twitter') ?? '';
      portfolio = prefs.getString('portfolio') ?? '';

      // Decode JSON strings
      skills = (jsonDecode(prefs.getString('skills') ?? '[]') as List<dynamic>)
          .map((skill) => skill.toString())
          .toList();
      languages = (jsonDecode(prefs.getString('languages') ?? '[]') as List<dynamic>)
          .map((lang) => lang as Map<String, dynamic>)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: isDarkMode ? Colors.white : Colors.black,
        ),
        title: Text(
          'Saved Information',
          style: TextStyle(
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSectionTitle('Personal Information', isDarkMode),
              buildInfoRow('Full Name', fullName, isDarkMode),
              buildInfoRow('About', about, isDarkMode),
              buildInfoRow('Email', email, isDarkMode),
              buildInfoRow('Phone', phone, isDarkMode),
              buildInfoRow('Address', address, isDarkMode),
              SizedBox(height: 20),

              buildSectionTitle('Social Links', isDarkMode),
              buildInfoRow('Facebook', facebook, isDarkMode),
              buildInfoRow('Instagram', instagram, isDarkMode),
              buildInfoRow('LinkedIn', linkedin, isDarkMode),
              buildInfoRow('Twitter', twitter, isDarkMode),
              buildInfoRow('Portfolio', portfolio, isDarkMode),
              SizedBox(height: 20),

              buildSectionTitle('Skills', isDarkMode),
              Text(
                skills.isNotEmpty ? skills.join(', ') : 'No skills added',
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              SizedBox(height: 20),

              buildSectionTitle('Languages', isDarkMode),
              Column(
                children: languages.isNotEmpty
                    ? languages.map((lang) => Text(
                  '${lang['language']} - ${lang['proficiency']}% proficiency',
                  style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                )).toList()
                    : [
                  Text(
                    'No languages added',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build section titles
  Widget buildSectionTitle(String title, bool isDarkMode) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: isDarkMode ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  // Helper method to build rows for displaying info
  Widget buildInfoRow(String label, String value, bool isDarkMode) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: isDarkMode ? Colors.white : Colors.black,
            ),
          ),
          Expanded(
            child: Text(
              value.isNotEmpty ? value : 'Not provided',
              style: TextStyle(
                fontSize: 16,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
