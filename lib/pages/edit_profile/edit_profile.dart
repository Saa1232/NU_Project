import 'package:flutter/material.dart';
import 'package:flutter_project_nu/constants/app_icon.dart';
import 'package:flutter_project_nu/constants/app_image.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(163, 33, 45, 57),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                spacing: 5,
                children: [
                  _buildHeadProfile(),
                  _buildRegistered(),
                  _buildPersonalDetails(),
                ],
              ),
            ),
            Positioned(top: 0, right: 0, left: 0, child: _buildAppBar()),
          ],
        ),
      ),
    );
  }

  Widget _buildHeadProfile() {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImage.profileImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  "Name",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Row(
                  children: [
                    Text(
                      "App ID: 3412080",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Spacer(),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,

                        image: DecorationImage(
                          image: AssetImage(appIconsHome.cameraIcon),
                          //fit: BoxFit.cover,
                          scale: 5,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAppBar() {
    return Container(
      height: 50,
      width: double.infinity,

      color: Color.fromARGB(163, 33, 45, 57),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/profileScreen");
                  },
                  child: Icon(Icons.arrow_back_ios, color: Colors.white),
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
                  "My Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: Colors.white,
                    letterSpacing: 3,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRegistered() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "REGISTERED PHONE NUMBER",
            style: TextStyle(fontSize: 20, color: Colors.white70),
          ),
          SizedBox(height: 5),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff212d39),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.phone_outlined, color: Colors.white),
                      SizedBox(width: 15),
                      Text(
                        "+855 11 223 844",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Spacer(),
                      Text(
                        "Change",
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Keep your phone number updated to maintain access to ABA Mobile.",
                    style: TextStyle(fontSize: 12, color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 3,
            width: double.infinity,
            color: Colors.grey.shade800,
          ),
        ],
      ),
    );
  }

  Widget _buildPersonalDetails() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "PERSONAL DETAILS",
            style: TextStyle(fontSize: 20, color: Colors.white70),
          ),
          SizedBox(height: 10),
          Container(
            //height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff212d39),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(appIconsHome.idIcon),
                      SizedBox(width: 10),
                      Text(
                        "Cambodian NID",
                        style: TextStyle(fontSize: 12, color: Colors.white70),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(height: 50, width: 120, color: Colors.white),
                      SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "011418618",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Text(
                            "Expires On: 07 Oct 2031",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 2,
                    width: double.infinity,
                    color: Colors.grey.shade800,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.person_outline, color: Colors.white),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "First Name",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            "Sovanreach",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 2,
                    width: double.infinity,
                    color: Colors.grey.shade800,
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.person_outline, color: Colors.white),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Last Name",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            "Pin",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 2,
                    width: double.infinity,
                    color: Colors.grey.shade800,
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.date_range_outlined, color: Colors.white),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Date of Birth",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            "20 Aug 2006",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 2,
                    width: double.infinity,
                    color: Colors.grey.shade800,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddressEmploymentInfo() {
    return Column();
  }
}
