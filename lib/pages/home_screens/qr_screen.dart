import 'package:flutter/material.dart';
import 'package:flutter_project_nu/constants/app_image.dart';

class QrScreen extends StatefulWidget {
  const QrScreen({super.key});

  @override
  State<QrScreen> createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff024164),
      body: SizedBox(
        // height: 400,
        width: double.infinity,
        child: Image.asset(AppImage.qrImage, fit: BoxFit.cover),
      ),
    );
  }
}
