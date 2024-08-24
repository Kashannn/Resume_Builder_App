import 'package:flutter/material.dart';
import 'package:flutter_resume_template/flutter_resume_template.dart';

class MyResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Resume'),
      ),
      body: FlutterResumeTemplate(

        templateTheme: TemplateTheme.modern,
        mode: TemplateMode.shakeEditAndSaveMode,
        onSaveResume: (globalKey) async =>
        await PdfHandler().createResume(globalKey),
      ),
    );
  }
}