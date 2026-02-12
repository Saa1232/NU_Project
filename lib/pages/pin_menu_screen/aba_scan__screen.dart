import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ABAScanScreen extends StatefulWidget {
  const ABAScanScreen({super.key});

  @override
  State<ABAScanScreen> createState() => _ABAScanScreenState();
}

class _ABAScanScreenState extends State<ABAScanScreen> {
  void openCamera() {
    ImagePicker imageP = ImagePicker();
    imageP.pickImage(source: ImageSource.camera);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff024164),
        foregroundColor: Colors.white,
        title: Text("ABA Scan"),
        centerTitle: true,
      ),
    );
  }
}
