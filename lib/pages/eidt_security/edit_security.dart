import 'package:flutter/material.dart';
import 'package:flutter_project_nu/constants/app_icon.dart';

class EditSecurity extends StatefulWidget {
  const EditSecurity({super.key});

  @override
  State<EditSecurity> createState() => _EditSecurityState();
}

class _EditSecurityState extends State<EditSecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff101c28),
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(context, "/profileScreen");
              },
              child: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            Text(
              "ABA",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 26,
                color: Colors.white,
                letterSpacing: 3,
              ),
            ),
            Text(
              "'",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Color.fromARGB(255, 185, 15, 3),
              ),
            ),
            SizedBox(width: 5),
            Text(
              "Security",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 26,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff101c28),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeadSecurity(),
              SizedBox(height: 10),
              _build6Digit(),
              _buildGeneral(),
              _buildAuthorization(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeadSecurity() {
    return Container(
      height: 100,
      width: double.infinity,
      color: const Color.fromARGB(255, 16, 28, 40),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Security",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Manage your account settings and other security configurations easily",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12, color: Colors.white70),
          ),
        ],
      ),
    );
  }

  Widget _build6Digit() {
    return Padding(
      padding: const EdgeInsets.all(20),
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
                style: TextStyle(fontSize: 14, color: Colors.grey.shade300),
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
    );
  }

  Widget _buildGeneral() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "GENERAL",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xff212d39),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        appIconsHome.faceIcon,
                        scale: 3,
                        color: Colors.white70,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Login with Face ID",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Log into app easily using Face ID",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Switch(value: false, onChanged: (value) {}),
                    ],
                  ),

                  SizedBox(height: 12),
                  _divider(),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        appIconsHome.hideIcon,
                        scale: 3,
                        color: Colors.white70,
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Confidential Mode",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Flip your phone to see/hide balance on Home Screen, "
                              "transactions amount and other sensitive data",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Switch(value: true, onChanged: (value) {}),
                    ],
                  ),

                  SizedBox(height: 12),
                  _divider(),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        appIconsHome.pinIcon,
                        scale: 3,
                        color: Colors.white70,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Change PIN",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Update your 4-digit PIN",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 12),
                  _divider(),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        appIconsHome.timeIcon,
                        scale: 3,
                        color: Colors.white70,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Logout after 1 minute",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "ABA Mobile will get locked by PIN automatically "
                              "after being inactive within selected period of time.",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Padding(
      padding: const EdgeInsets.only(left: 55),
      child: Container(
        height: 1,
        width: double.infinity,
        color: Colors.grey.shade800,
      ),
    );
  }

  Widget _buildAuthorization() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "AUTHORIZATION OPTIONS",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xff212d39),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        appIconsHome.faceidpass,
                        scale: 3,
                        color: Colors.white70,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Pay & Transfer with FacePass",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Transaction Limit: From \$5,000",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 12),
                  _divider(),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        appIconsHome.faceIcon,
                        scale: 3,
                        color: Colors.white70,
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Pay & Transfer with Face ID",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Use Face ID when make transaction with "
                              "ABA PAY & from Favorites ",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Switch(value: false, onChanged: (value) {}),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
