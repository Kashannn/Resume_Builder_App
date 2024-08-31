import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:shared_preferences/shared_preferences.dart';

import '../Templates/template1.dart';
import '../Templates/template10.dart';
import '../Templates/template11.dart';
import '../Templates/template12.dart';
import '../Templates/template13.dart';
import '../Templates/template14.dart';
import '../Templates/template15.dart';
import '../Templates/template16.dart';
import '../Templates/template17.dart';
import '../Templates/template18.dart';
import '../Templates/template19.dart';
import '../Templates/template2.dart';
import '../Templates/template20.dart';
import '../Templates/template3.dart';
import '../Templates/template4.dart';
import '../Templates/template5.dart';
import '../Templates/template6.dart';
import '../Templates/template7.dart';
import '../Templates/template8.dart';
import '../Templates/template9.dart';
import '../utils/components/custom_button.dart';
import '../utils/constant/app_colors.dart';
import '../utils/constant/app_textstyle_constant.dart';

class CustomizedTemplateScreen extends StatefulWidget {
  final String templateIdentifier;
  const CustomizedTemplateScreen({Key? key, required this.templateIdentifier})
      : super(key: key);

  @override
  State<CustomizedTemplateScreen> createState() =>
      _CustomizedTemplateScreenState();
}

class _CustomizedTemplateScreenState extends State<CustomizedTemplateScreen> {
  final GlobalKey _containerKey = GlobalKey();

  Widget _loadSelectedTemplate() {
    final Map<String, Widget Function()> templateMap = {
      'Template1': () => Template1(),
      'Template2': () => Template2(),
      'Template3': () => Template3(),
      'Template4': () => Template4(),
      'Template5': () => Template5(),
      'Template6': () => Template6(),
      'Template7': () => Template7(),
      'Template8': () => Template8(),
      'Template9': () => Template9(),
      'Template10': () => Template10(),
      'Template11': () => Template11(),
      'Template12': () => Template12(),
      'Template13': () => Template13(),
      'Template14': () => Template14(),
      'Template15': () => Template15(),
      'Template16': () => Template16(),
      'Template17': () => Template17(),
      'Template18': () => Template18(),
      'Template19': () => Template19(),
      'Template20': () => Template20(),
    };

    return templateMap[widget.templateIdentifier]?.call() ??
        Container(
          child: Center(
            child: Text('Template not found'),
          ),
        );
  }

  Future<void> _capturePng() async {
    try {
      RenderRepaintBoundary boundary = _containerKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 5.0);
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      Uint8List pngBytes = byteData!.buffer.asUint8List();
      print('Image captured successfully');

      // Generate PDF
      final pdf = pw.Document();
      final pdfImage = pw.MemoryImage(pngBytes);

      pdf.addPage(
        pw.Page(
          pageFormat: PdfPageFormat.a4,
          build: (pw.Context context) {
            return pw.Image(
              pdfImage,
              fit: pw.BoxFit.fill,
            );
          },
        ),
      );

      // Save PDF
      final outputFile = await _getOutputFile();
      final file = File(outputFile);
      await file.writeAsBytes(await pdf.save());
      print('PDF saved successfully at $outputFile');

      // Open PDF
      OpenFile.open(outputFile);
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<String> _getOutputFile() async {
    try {
      final directory = await getTemporaryDirectory();
      final filePath = '${directory.path}/custom_template.pdf';
      print('Output file path: $filePath');
      return filePath;
    } catch (e) {
      print('Error: $e');
      rethrow;
    }
  }

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  String userName = 'Peter';
  String userRole = 'Product Designer';
  String socialMedia = '@peterdesigner';
  String id = '123456789';
  String email = 'contact@peter.com';
  String mobile = '+001 123 456 789';
  String address = 'address, city, country';
  String ability1 = 'Lorem ipsum dolor sit amet';
  String ability2 = 'Lorem ipsum dolor sit amet';
  String ability3 = 'Lorem ipsum dolor sit amet';
  String ability4 = 'Lorem ipsum dolor sit amet';

  String about =
      "Position title and any relevant details. I am a tech enthusiast .I am passionate about designs, goal driven, quick to learn and a highly productive individual. I have various industry ready design skills, I am experienced in various software design tools, experienced in providing technical support to users, collaborated on design projects and working in a team-oriented environment. Both remotely and on-site.";
  String experience =
      "As the creative director at Longchris foundation, I worked to create graphic design and marketing solutions to deliver engaging content that meets our audience’s needs. Designed the foundation’s website and managed its contentsto pass standard and accurate brand identity.";

  List<Map<String, String>> reference = [
    {
      'name': 'Someone Name',
      'title': 'Company  Institute Name',
      'email': 'contact@peterdesigner.com',
      'phone': '+001 123 456 789',
    },
    {
      'name': 'Someone Name',
      'title': 'Company  Institute Name',
      'email': 'contact@peterdesigner.com',
      'phone': '+001 123 456 789',
    },
  ];

  List<Map<String, dynamic>> skillsData = [
    {'name': 'Figma - XD', 'proficiency': 0.8},
    {'name': 'Photoshop', 'proficiency': 0.7},
    {'name': 'Illustrator', 'proficiency': 0.6},
  ];

  List<Map<String, String>> education = [
    {
      'year': '2015',
      'degree': 'Enter Masters Degree',
      'institution': 'University / College / Institute',
    },
    {
      'year': '2012',
      'degree': 'Enter Bachelor Degree',
      'institution': 'University / College / Institute',
    },
  ];

  Future<void> _saveUserData() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/user_data.txt');
      await file.writeAsString(jsonEncode({
        'userName': userName,
        'userRole': userRole,
        'socialMedia': socialMedia,
        'id': id,
        'email': email,
        'mobile': mobile,
        'address': address,
        'ability1': ability1,
        'ability2': ability2,
        'ability3': ability3,
        'ability4': ability4,
        'about': about,
        'experience': experience,
        'reference': jsonEncode(reference),
        'skillsData': jsonEncode(skillsData),
        'education': jsonEncode(education),
      }));
    } catch (e) {}
    final prefs = await SharedPreferences.getInstance();

    // Save user data to SharedPreferences
    await prefs.setString('userName', userName);
    await prefs.setString('userRole', userRole);
    await prefs.setString('socialMedia', socialMedia);
    await prefs.setString('id', id);
    await prefs.setString('email', email);
    await prefs.setString('mobile', mobile);
    await prefs.setString('address', address);
    await prefs.setString('ability1', ability1);
    await prefs.setString('ability2', ability2);
    await prefs.setString('ability3', ability3);
    await prefs.setString('ability4', ability4);
    await prefs.setString('about', about);
    await prefs.setString('experience', experience);

    // Save lists as JSON strings
    await prefs.setString('reference', jsonEncode(reference));
    await prefs.setString('skillsData', jsonEncode(skillsData));
    await prefs.setString('education', jsonEncode(education));

    print('User data saved successfully');
  }

  Future<void> _loadUserData() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      // Load user data from SharedPreferences
      userName = prefs.getString('userName') ?? userName;
      userRole = prefs.getString('userRole') ?? userRole;
      socialMedia = prefs.getString('socialMedia') ?? socialMedia;
      id = prefs.getString('id') ?? id;
      email = prefs.getString('email') ?? email;
      mobile = prefs.getString('mobile') ?? mobile;
      address = prefs.getString('address') ?? address;
      ability1 = prefs.getString('ability1') ?? ability1;
      ability2 = prefs.getString('ability2') ?? ability2;
      ability3 = prefs.getString('ability3') ?? ability3;
      ability4 = prefs.getString('ability4') ?? ability4;
      about = prefs.getString('about') ?? about;
      experience = prefs.getString('experience') ?? experience;

      // Load lists from JSON strings
      reference = jsonDecode(prefs.getString('reference') ?? '[]')
          .cast<Map<String, String>>();
      skillsData = jsonDecode(prefs.getString('skillsData') ?? '[]')
          .cast<Map<String, dynamic>>();
      education = jsonDecode(prefs.getString('education') ?? '[]')
          .cast<Map<String, String>>();
    });

    print('User data loaded successfully');
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(375, 812), minTextAdapt: true);
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => Get.back(),
                      icon: Icon(Icons.arrow_back)),
                  Text(
                    'Customize Template',
                    style: isDarkMode ? mStyleWhite18600 : mStyleBlack18600,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: _capturePng,
                    child: Container(
                      height: 40.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF5BBBFF),
                            Color(0xFF005592),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.file_download_outlined,
                            color: Colors.white,
                            size: 15.sp,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            'Download',
                            style: mStyleWhite12600,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'TIP: ',
                          style:
                              isDarkMode ? mStyleWhite12600 : mStyleBlack12600,
                        ),
                        TextSpan(
                          text: 'Click on any text/image to edit.',
                          style: isDarkMode
                              ? mStyleWhite12600
                              : mStyleBlack12600.copyWith(
                                  color: AppColors.lightGray2),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              RepaintBoundary(
                key: _containerKey,
                child: SizedBox(
                  height: 520.h,
                  child: _loadSelectedTemplate(),
                ),
              ),
              SizedBox(height: 20.h),
              CustomGradientButton(
                onPressed: _saveUserData,
                text: 'Save Info',
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFAAAAAA),
                    Color(0xFFAAAAAA),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              SizedBox(height: 10.h),
              CustomGradientButton(
                onPressed: () {
                  // Button action
                },
                text: 'Add Saved Info',
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
      ),
    );
  }
}
