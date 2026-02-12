import 'package:flutter/material.dart';
import 'package:flutter_project_nu/constants/app_icon.dart';
import 'package:flutter_project_nu/routes/app_routes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
              border: Border.all(width: 3, color: Colors.white),
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
      //height: 700,
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
          _buildItem("Security", appIconsHome.securityIcon),
          SizedBox(height: 5),
          _buildItem(
            "Shake Action",
            appIconsHome.phoneShakeIcon,
            moreText: "None",
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
            ],
          ),
        ),
      ],
    );
  }
}
