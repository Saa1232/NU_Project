import 'package:flutter/material.dart';
import 'package:flutter_project_nu/routes/app_routes.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Spacer(),
            _buildABAlogo(),
            Spacer(),
            _buildActivateABA(),
            SizedBox(height: 15),
            _buildRegister(),
          ],
        ),
      ),
    );
  }

  Widget _buildRegister() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Container(height: 1, color: Colors.grey[700])),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
              child: Text(
                "Don't have ABA account yet?",
                style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(child: Container(height: 1, color: Colors.grey[700])),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pushNamed(context, AppRoutes.registerScreen);
              });
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white30),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: .min,
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            Positioned(
                              left: 2,
                              bottom: 6,
                              child: Container(
                                width: 30,
                                height: 22,

                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                            Image.asset(
                              "assets/icons/icon_card.png",
                              scale: 1.4,
                              color: Color(0xff024164),
                            ),
                          ],
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              "Open ABA Instant Account",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Open your first ABA account in a few minutes",
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row _buildABAlogo() {
    return Row(
      mainAxisAlignment: .center,
      children: [
        Text(
          "aba".toUpperCase(),
          style: TextStyle(
            fontWeight: .w700,
            fontSize: 30,
            letterSpacing: 4,
            color: Colors.white,
          ),
        ),
        Text(
          "'".toUpperCase(),
          style: TextStyle(
            fontWeight: .w900,
            fontSize: 35,
            letterSpacing: 4,
            color: Colors.red,
          ),
        ),
        Text(" Mobile", style: TextStyle(fontSize: 30, color: Colors.white)),
      ],
    );
  }

  Padding _buildActivateABA() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GestureDetector(
        onTap: () {
          setState(() {
            Navigator.pushNamed(context, AppRoutes.loginScreen);
          });
        },
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 218, 50, 38),
                const Color.fromARGB(255, 212, 38, 38),
              ],
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: .min,
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          left: 8,
                          bottom: 1,
                          child: Container(
                            width: 20,
                            height: 33,

                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/icons/iphone_option_login.png",
                          scale: 1.4,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          "Activate ABA Mobile",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "For existing ABA account holders",
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                      size: 12,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
