import 'package:cvapp/Templates/pdf_generator.dart';
import 'package:cvapp/utils/constant/app_images_constant.dart';
import 'package:flutter/material.dart';

class CVTemplateJaneDoe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left side - Basic Info
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  color: Colors.grey[200],
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Center(
                          child: ElevatedButton.icon(
                            onPressed: () async {
                              await generateCVPdf(context);
                            },
                            icon: Icon(Icons.download),
                            label: Text('Download CV as PDF'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 24.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(AppImages.profilePicture),
                        ),
                        SizedBox(height: 20),
                        // Name and Title
                        Text(
                          'JANE DOE',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'TITLE GOES HERE',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        SizedBox(height: 20),
                        // Basic Info
                        buildBasicInfo(),
                        SizedBox(height: 20),
                        // Abilities
                        buildAbilities(),
                        SizedBox(height: 20),
                        // References
                        buildReferences(),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
              // Right side - Profile and Experience
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildProfile(),
                    SizedBox(height: 20),
                    buildSkills(),
                    SizedBox(height: 20),
                    buildExperience(),
                    SizedBox(height: 20),
                    buildEducation(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBasicInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'BASIC INFO',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text('Name: Jane Doe Williams'),
        Text('ID: 1-2345-6789'),
        Text('Phone: (+506) 0987-6543'),
        Text('Email: janedoe@gmail.com'),
        Text('Address: Somewhere, Costa Rica'),
      ],
    );
  }

  Widget buildAbilities() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ABILITIES',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text('• Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
        Text('• Exerciation ullamco laboris.'),
        Text('• Ut enim ad minim veniam, quis nostrud.'),
        Text('• Aliquip ex ea commodo consequat ipsum.'),
      ],
    );
  }

  Widget buildReferences() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'REFERENCES',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
            '• SOMEONES NAME\nProduction Manager and Marketer\nsomeone@hotmail.com\n(+510) 5600-3700'),
        SizedBox(height: 10),
        Text(
            '• LOREM IPSUM\nProduction Data Operator\nsomeone@gmail.com\n(+756) 1200-3400'),
      ],
    );
  }

  Widget buildProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Profile',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Position title and any relevant details. I am a tech enthusiast, '
          'passionate about designs, goal driven, quick to learn and a highly '
          'productive individual.',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget buildSkills() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skills',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        buildSkillRow('Figma - XD', 0.8),
        buildSkillRow('Photoshop', 0.7),
        buildSkillRow('Illustrator', 0.6),
      ],
    );
  }

  Widget buildSkillRow(String skill, double level) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(skill),
          ),
          Expanded(
            flex: 3,
            child: LinearProgressIndicator(
              value: level,
              color: Colors.cyan,
              backgroundColor: Colors.grey[300],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildExperience() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Experience',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'At the creative director at Langthit foundation, I worked to create graphic design '
          'and marketing solutions to deliver engaging content that meets our audience’s needs.',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget buildEducation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Education',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        buildEducationItem(
            '2014', 'A UNIVERSITY TITLE', 'Some Educational Institution'),
        buildEducationItem('2006', 'DOLOR SIT AMET', 'Utmin Ad Min Veniam'),
        buildEducationItem(
            '2005', 'EUMSOD TEMPOR INCIDIDUNESUMOD', 'National Institute'),
        buildEducationItem(
            '2004', 'EXERCITATION ULLIAMCO', 'Labors Nisi Aliquip'),
      ],
    );
  }

  Widget buildEducationItem(String year, String title, String institution) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            year,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 14),
          ),
          Text(
            institution,
            style: TextStyle(fontSize: 12, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
