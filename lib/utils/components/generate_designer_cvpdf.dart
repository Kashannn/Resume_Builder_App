import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:open_file/open_file.dart';

import '../../Templates/pdf_generator.dart';

Future<void> generateDesignerCVPdf(BuildContext context) async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [

          ],
        );
      },
    ),
  );

  // Get the temporary directory of the device
  final Directory directory = await getApplicationDocumentsDirectory();
  final String path = "${directory.path}/DesignerCV.pdf";

  // Save the PDF file
  final File file = File(path);
  await file.writeAsBytes(await pdf.save());

  // Open the PDF file to view or share
  OpenFile.open(path);

  // Show a Snackbar confirmation
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('PDF downloaded to $path')),
  );
}
