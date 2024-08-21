import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../utils/components/custom_bottom_navigation_bar.dart';
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
  String? localPdfPath;

  @override
  void initState() {
    super.initState();
    loadPdfFromAssets();
  }

  Future<void> loadPdfFromAssets() async {
    try {
      final ByteData data = await rootBundle.load('assets/templates/template1.pdf');
      final Uint8List bytes = data.buffer.asUint8List();
      final Directory tempDir = await getTemporaryDirectory();
      final File file = File('${tempDir.path}/template1.pdf');
      await file.writeAsBytes(bytes, flush: true);
      setState(() {
        localPdfPath = file.path;
      });
    } catch (e) {
      print('Error loading PDF: $e');
    }
  }

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
              Text(
                'CV Maker',
                style: isDarkMode ? mStyleWhite20600 : mStyleBlack20600,
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Templates',
                    style: isDarkMode ? mStyleWhite16600 : mStyleBlack16600,
                  ),
                  SvgPicture.asset(
                    AppImages.icons,
                    color: isDarkMode ? Colors.white : AppColors.blackColor,
                    height: 24.h,
                    width: 24.w,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              localPdfPath != null
                  ? GestureDetector(
                onTap: (){Get.to(CustomizeTemplateScreen(
                  filePath: localPdfPath!,
                ));},
                    child: Container(
                                    padding: EdgeInsets.all(10.w),
                                    height: 250.h,
                                    width: 193.w,
                                    decoration: BoxDecoration(
                    color: Color(0xFF151A25),
                    borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: PDFView(
                    filePath: localPdfPath!,

                                    ),
                                  ),
                  )
                  : Center(child: CircularProgressIndicator()),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
