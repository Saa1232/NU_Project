import 'package:flutter/material.dart';
import 'package:flutter_project_nu/constants/app_icon.dart';
import 'package:flutter_project_nu/constants/app_image.dart';
import 'package:flutter_project_nu/routes/app_routes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String selectedShakeAction = "None";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff101c28),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildHeadProfile(),
                  SizedBox(height: 10),
                  _buildBodySetting(),
                  SizedBox(height: 60),
                ],
              ),
            ),
          ),
          Positioned(bottom: 0, left: 0, right: 0, child: _buildBottom()),
        ],
      ),
    );
  }

  Widget _buildHeadProfile() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, "/homeScreen");
                },
                child: Icon(Icons.close, size: 40, color: Colors.white),
              ),
              SizedBox(width: 10),
              Text(
                "ABA",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: Colors.white,
                  letterSpacing: 3,
                ),
              ),
              Text(
                "'",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 32,
                  color: Color.fromARGB(255, 185, 15, 3),
                ),
              ),
              SizedBox(width: 5),
              Text(
                "Settings",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28,
                  color: Colors.white,
                  letterSpacing: 3,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
              border: Border.all(width: 2, color: Colors.white),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(65),
              child: Image.asset(AppImage.profileImage, fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Name",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            "App ID: 3421080",
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildBodySetting() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff101c28),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff212d39),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Choose a 6-digit PIN option for superior protection and peace of mind.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xff47aedb),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "LEARN MORE",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  AppRoutes.editProfileScreen,
                  (route) => false,
                );
              });
            },
            child: _buildItem("My Profile", appIconsHome.profileIconsetting),
          ),

          SizedBox(height: 5),

          GestureDetector(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoutes.editsecurityScreen,
                (route) => false,
              );
            },
            child: _buildItem("Security", appIconsHome.securityIcon),
          ),

          SizedBox(height: 5),

          GestureDetector(
            onTap: _showShakeBottomSheet,
            child: _buildItem(
              "Shake Action",
              appIconsHome.phoneShakeIcon,
              moreText: selectedShakeAction,
            ),
          ),

          SizedBox(height: 5),

          _buildItem(
            "Language",
            appIconsHome.languageIcon,
            moreText: "English",
          ),

          SizedBox(height: 5),

          _buildItem("Contact Us", appIconsHome.conatactIcon),

          SizedBox(height: 5),

          _buildItem("Terms & Conditions", appIconsHome.termConditionIcon),
        ],
      ),
    );
  }

  Widget _buildItem(String title, String iconPath, {String? moreText}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff212d39),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: Image.asset(iconPath, fit: BoxFit.cover),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            if (moreText != null)
              Text(moreText, style: TextStyle(color: Colors.grey.shade400)),
            SizedBox(width: 8),
            Icon(Icons.chevron_right, color: Colors.grey.shade400),
          ],
        ),
      ),
    );
  }

  Widget _buildBottom() {
    return Column(
      children: [
        Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff101c28),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ABA",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: Colors.white,
                  letterSpacing: 3,
                ),
              ),
              Text(
                "'",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 12,
                  color: Color.fromARGB(255, 185, 15, 3),
                ),
              ),
              SizedBox(width: 5),
              Text(
                "BANK",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: Colors.white,
                  letterSpacing: 3,
                ),
              ),
              Text("|", style: TextStyle(color: Colors.white)),
              SizedBox(width: 5),
              Row(
                children: [
                  Container(height: 10, width: 10, color: Colors.red),
                  SizedBox(width: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "NATIONAL BANK",
                        style: TextStyle(fontSize: 5, color: Colors.white),
                      ),
                      Text(
                        "OF CANADA GROUP",
                        style: TextStyle(fontSize: 5, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _showShakeBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xff1c2a38),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 10),
                    Container(
                      width: 40,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: 20),
                    Icon(Icons.phone_iphone, size: 60, color: Colors.white),
                    SizedBox(height: 15),
                    Text(
                      "Shake Action",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Select a function below for quick access when shaking your phone:",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 20),

                    _radioTile("ABA Merchant", setModalState),
                    _radioTile("ABA QR", setModalState),
                    _radioTile("ABA Scan", setModalState),
                    _radioTile("Analytics", setModalState),
                    _radioTile("Favorites", setModalState),
                    _radioTile("Navi", setModalState),
                    _radioTile("None", setModalState),

                    SizedBox(height: 20),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _radioTile(String value, StateSetter setModalState) {
    return RadioListTile(
      value: value,
      // ignore: deprecated_member_use
      groupValue: selectedShakeAction,
      // ignore: deprecated_member_use
      onChanged: (val) {
        setModalState(() {
          selectedShakeAction = val!;
        });
        setState(() {});
      },
      title: Text(value, style: TextStyle(color: Colors.white)),
      activeColor: Colors.blue,
    );
  }
}
