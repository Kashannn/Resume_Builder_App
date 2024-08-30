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

import '../Templates/template1.dart';
import '../Templates/template10.dart';
import '../Templates/template12.dart';
import '../Templates/template16.dart';
import '../Templates/template7.dart';
import '../Templates/template8.dart';
import '../utils/components/custom_button.dart';
import '../utils/constant/app_colors.dart';
import '../utils/constant/app_textstyle_constant.dart';

class CustomizedTemplateScreen extends StatefulWidget {
  final String? imagePath;
  const CustomizedTemplateScreen({super.key, this.imagePath});

  @override
  State<CustomizedTemplateScreen> createState() =>
      _CustomizedTemplateScreenState();
}

class _CustomizedTemplateScreenState extends State<CustomizedTemplateScreen> {
  final GlobalKey _containerKey = GlobalKey();

  Future<void> _capturePng() async {
    try {
      RenderRepaintBoundary boundary = _containerKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
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
              fit: pw.BoxFit.cover,
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
                      width: 112.w,
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
                          style: isDarkMode
                              ? mStyleWhite12600
                              : mStyleBlack12600,
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
                  height: 522.h,
                  child: Template7(),
                ),
              ),
              SizedBox(height: 20.h),
              CustomGradientButton(
                onPressed: () {},
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
              SizedBox(
                height: 10.h,
              ),
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
