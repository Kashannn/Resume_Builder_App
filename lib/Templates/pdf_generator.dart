import 'dart:io';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<String> generateCVPdf(BuildContext context) async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Expanded(
              flex: 2,
              child: pw.Container(
                padding: pw.EdgeInsets.all(16),
                color: PdfColors.grey200, // Use PdfColors without pw prefix
                child: pw.Column(
                  children: [
                    // Profile Image Placeholder
                    pw.Container(
                      width: 100,
                      height: 100,
                      decoration: pw.BoxDecoration(
                        shape: pw.BoxShape.circle,
                        color:
                            PdfColors.grey, // Use PdfColors without pw prefix
                      ),
                      alignment: pw.Alignment.center,
                      child:
                          pw.Text('Image', style: pw.TextStyle(fontSize: 12)),
                    ),
                    pw.SizedBox(height: 20),
                    // Name and Title
                    pw.Text('JANE DOE',
                        style: pw.TextStyle(
                            fontSize: 24, fontWeight: pw.FontWeight.bold)),
                    pw.Text('TITLE GOES HERE',
                        style:
                            pw.TextStyle(fontSize: 16, color: PdfColors.grey)),
                    pw.SizedBox(height: 20),
                    // Basic Info
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('BASIC INFO',
                            style: pw.TextStyle(
                                fontSize: 18, fontWeight: pw.FontWeight.bold)),
                        pw.SizedBox(height: 10),
                        pw.Text('Name: Jane Doe Williams'),
                        pw.Text('ID: 1-2345-6789'),
                        pw.Text('Phone: (+506) 0987-6543'),
                        pw.Text('Email: janedoe@gmail.com'),
                        pw.Text('Address: Somewhere, Costa Rica'),
                      ],
                    ),
                    pw.SizedBox(height: 20),
                    // Abilities
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('ABILITIES',
                            style: pw.TextStyle(
                                fontSize: 18, fontWeight: pw.FontWeight.bold)),
                        pw.SizedBox(height: 10),
                        pw.Bullet(
                            text:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                        pw.Bullet(text: 'Exerciation ullamco laboris.'),
                        pw.Bullet(
                            text: 'Ut enim ad minim veniam, quis nostrud.'),
                        pw.Bullet(
                            text: 'Aliquip ex ea commodo consequat ipsum.'),
                      ],
                    ),
                    pw.SizedBox(height: 20),
                    // References
                    pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('REFERENCES',
                            style: pw.TextStyle(
                                fontSize: 18, fontWeight: pw.FontWeight.bold)),
                        pw.SizedBox(height: 10),
                        pw.Text(
                            'SOMEONES NAME\nProduction Manager and Marketer\nsomeone@hotmail.com\n(+510) 5600-3700'),
                        pw.SizedBox(height: 10),
                        pw.Text(
                            'LOREM IPSUM\nProduction Data Operator\nsomeone@gmail.com\n(+756) 1200-3400'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            pw.SizedBox(width: 16),
            pw.Expanded(
              flex: 3,
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text('Profile',
                      style: pw.TextStyle(
                          fontSize: 24, fontWeight: pw.FontWeight.bold)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      'Position title and any relevant details. I am a tech enthusiast, passionate about designs, goal driven, quick to learn and a highly productive individual.'),
                  pw.SizedBox(height: 20),
                  pw.Text('Skills',
                      style: pw.TextStyle(
                          fontSize: 24, fontWeight: pw.FontWeight.bold)),
                  pw.SizedBox(height: 10),
                  buildSkillRow('Figma - XD', 0.8),
                  buildSkillRow('Photoshop', 0.7),
                  buildSkillRow('Illustrator', 0.6),
                  pw.SizedBox(height: 20),
                  pw.Text('Experience',
                      style: pw.TextStyle(
                          fontSize: 24, fontWeight: pw.FontWeight.bold)),
                  pw.SizedBox(height: 10),
                  pw.Text(
                      'At the creative director at Langthit foundation, I worked to create graphic design and marketing solutions to deliver engaging content that meets our audience’s needs.'),
                  pw.SizedBox(height: 20),
                  pw.Text('Education',
                      style: pw.TextStyle(
                          fontSize: 24, fontWeight: pw.FontWeight.bold)),
                  pw.SizedBox(height: 10),
                  buildEducationItem('2014', 'A UNIVERSITY TITLE',
                      'Some Educational Institution'),
                  buildEducationItem(
                      '2006', 'DOLOR SIT AMET', 'Utmin Ad Min Veniam'),
                  buildEducationItem('2005', 'EUMSOD TEMPOR INCIDIDUNESUMOD',
                      'National Institute'),
                  buildEducationItem(
                      '2004', 'EXERCITATION ULLIAMCO', 'Labors Nisi Aliquip'),
                ],
              ),
            ),
          ],
        );
      },
    ),
  );

  // Get the temporary directory of the device
  final Directory directory = await getTemporaryDirectory();
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

  return file.path;
}

pw.Widget buildSkillRow(String skill, double level) {
  return pw.Padding(
    padding: const pw.EdgeInsets.symmetric(vertical: 5),
    child: pw.Row(
      children: [
        pw.Expanded(
          flex: 2,
          child: pw.Text(skill, style: pw.TextStyle(fontSize: 11)),
        ),
        pw.Expanded(
          flex: 3,
          child: pw.LinearProgressIndicator(
            value: level,
            // valueColor: pw.AlwaysStoppedAnimation(PdfColors.cyan),
            backgroundColor:
                PdfColors.grey300, // Use PdfColors without pw prefix
          ),
        ),
      ],
    ),
  );
}

pw.Widget buildEducationItem(String year, String title, String institution) {
  return pw.Padding(
    padding: const pw.EdgeInsets.symmetric(vertical: 5),
    child: pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(year,
            style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold)),
        pw.Text(title, style: pw.TextStyle(fontSize: 14)),
        pw.Text(institution,
            style: pw.TextStyle(
                fontSize: 12,
                color: PdfColors.grey)),
      ],
    ),
  );
}
