import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../utils/components/custom_button.dart';
import '../utils/constant/app_colors.dart';
import '../utils/constant/app_textstyle_constant.dart';
import '../Templates/template16.dart';

class CustomizedTemplateScreen extends StatefulWidget {
  final String? imagePath;
  const CustomizedTemplateScreen({super.key, this.imagePath});

  @override
  State<CustomizedTemplateScreen> createState() =>
      _CustomizedTemplateScreenState();
}

class _CustomizedTemplateScreenState extends State<CustomizedTemplateScreen> {
  final GlobalKey _containerKey = GlobalKey();

  Future<void> _captureAndSavePDF() async {
    try {
      // Scroll the widget into view to ensure it is fully rendered
      final renderObject = _containerKey.currentContext?.findRenderObject() as RenderBox?;
      final double scrollHeight = renderObject?.size.height ?? 0;

      // Now capture the image of the entire scrollable widget
      RenderRepaintBoundary boundary = _containerKey.currentContext?.findRenderObject() as RenderRepaintBoundary;
      var image = await boundary.toImage(pixelRatio: 1.4,);
      ByteData? byteData = await image.toByteData(format: ImageByteFormat.png);
      Uint8List capturedImage = byteData!.buffer.asUint8List();

      final pdf = pw.Document();

      final pdfPageSize = PdfPageFormat.a4;

      final pageWidth = pdfPageSize.width;
      final pageHeight = pdfPageSize.height;

      // Calculate scale factor and dimensions
      final codec = await instantiateImageCodec(capturedImage);
      final frame = await codec.getNextFrame();
      final imageHeight = frame.image.height.toDouble();
      final imageWidth = frame.image.width.toDouble();

      final scaleX = pageWidth / imageWidth;
      final scaleY = pageHeight / imageHeight;
      final scaleFactor = min(scaleX, scaleY);

      final scaledImageWidth = imageWidth * scaleFactor;
      final scaledImageHeight = imageHeight * scaleFactor;

      // Calculate the number of pages needed
      final numPages = (scaledImageHeight / pageHeight).ceil();

      for (int pageIndex = 0; pageIndex < numPages; pageIndex++) {
        final startY = pageIndex * pageHeight / scaleFactor;
        final endY = min(startY + pageHeight / scaleFactor, imageHeight);

        final recorder = PictureRecorder();
        final canvas = Canvas(
          recorder,
          Rect.fromLTWH(0, 0, pdfPageSize.width, pdfPageSize.height),
        );

        canvas.scale(scaleFactor);
        canvas.drawImageRect(
          frame.image,
          Rect.fromLTWH(0, startY, imageWidth, endY - startY),
          Rect.fromLTWH(0, 0, pdfPageSize.width, pdfPageSize.height),
          Paint(),
        );

        final croppedImage = await recorder
            .endRecording()
            .toImage(pdfPageSize.width.toInt(), pageHeight.toInt());
        final byteData1 = await croppedImage.toByteData(format: ImageByteFormat.png);
        final croppedImageBytes = byteData1!.buffer.asUint8List();

        final pdfImage = pw.MemoryImage(croppedImageBytes);

        pdf.addPage(
          pw.Page(
            pageFormat: pdfPageSize.copyWith(
              marginBottom: 0,
              marginLeft: 0,
              marginRight: 0,
              marginTop: 0,
            ),
            build: (pw.Context context) {
              return pw.Image(
                pdfImage,
                fit: pw.BoxFit.cover,
              );
            },
          ),
        );
      }

      // Save the PDF to a file
      final directory = await getTemporaryDirectory();
      final pdfFilePath = '${directory.path}/template.pdf';
      final pdfFile = File(pdfFilePath);
      await pdfFile.writeAsBytes(await pdf.save());
      await OpenFile.open(pdfFilePath);

      Get.snackbar('Success', 'PDF saved at $pdfFilePath', snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      Get.snackbar('Error', 'Failed to capture the template', snackPosition: SnackPosition.BOTTOM);
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
                    onTap: _captureAndSavePDF,
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
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  height: 720,
                  child: RepaintBoundary(
                    key: _containerKey,
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF151A25),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: AspectRatio(
                          aspectRatio:
                          PdfPageFormat.a4.width / PdfPageFormat.a4.height,
                          child: Template16(), // Your template widget here
                        ),
                      ),
                    ),
                  ),
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
