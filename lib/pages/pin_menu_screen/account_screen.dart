import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_project_nu/routes/app_routes.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c2132),
      appBar: appbaracc(),
      body: Column(
        children: [
          _buildHeader(),
          Expanded(child: _buildAnalytics()),
        ],
      ),
    );
  }

  Widget _buildsaving(Color color, String balance, String currency, id) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 15, right: 15),
      height: 120,
      width: .infinity,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 15,
            height: .infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: .start,

              children: [
                Row(
                  children: [
                    Text(
                      "Savings",
                      style: GoogleFonts.spaceGrotesk(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: .w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  '${id} | Savings',
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 13,
                    color: Colors.white60,
                  ),
                ),

                SizedBox(width: 10),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: .end,
              children: [
                Text(
                  "...",
                  style: GoogleFonts.spaceGrotesk(
                    fontWeight: .w900,
                    fontSize: 30,
                    height: 0.5,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      balance,
                      style: GoogleFonts.spaceGrotesk(
                        fontWeight: .bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      currency,
                      style: TextStyle(fontSize: 11, color: Colors.white60),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnalytics() {
    return Container(
      width: .infinity,
      decoration: BoxDecoration(
        color: Color(0xff212d39),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pushNamed(context, AppRoutes.savingUSDscreen);
              });
            },
            child: _buildsaving(
              Colors.lightBlueAccent,
              "100,000,000.00",
              "usd".toUpperCase(),
              "001 123 231",
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: _buildsaving(
              Colors.deepPurple,
              "0.00",
              "khr".toUpperCase(),
              "001 231 454",
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: .start,
            children: [
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentGeometry.topCenter,
                    end: AlignmentGeometry.bottomCenter,
                    colors: [
                      const Color(0xff008ccd),
                      const Color(0xff008ccd),
                      const Color(0xff008ccd),
                      const Color(0xff008ccd),
                      const Color(0xff008ccd),
                      const Color(0xff008ccd),
                      const Color(0xff008ccd),
                      const Color(0xff008ccd),
                      const Color(0xff008ccd),
                      const Color.fromARGB(255, 128, 189, 207),
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff0c2132),
                        ),
                        child: Column(
                          mainAxisAlignment: .center,
                          children: [
                            Image.asset(
                              "assets/icons/allacc_icon.jpg",
                              scale: 2,
                            ),
                            Text(
                              "All Accounts",
                              style: GoogleFonts.spaceGrotesk(
                                fontWeight: .bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),

              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  mainAxisAlignment: .start,
                  crossAxisAlignment: .end,
                  children: [
                    Text(
                      "Available Balance",
                      style: TextStyle(
                        color: Colors.white38,
                        fontWeight: .bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: .center,
                      children: [
                        FittedBox(
                          child: Text(
                            "\$100,000,000",
                            style: GoogleFonts.spaceGrotesk(
                              fontWeight: .bold,
                              fontSize: 21,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          ".00",
                          style: TextStyle(
                            fontWeight: .bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 2,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(color: Colors.white38),
                    ),
                    SizedBox(height: 15),
                    Row(
                      crossAxisAlignment: .center,
                      children: [
                        FittedBox(
                          child: Text(
                            "៛0",
                            style: GoogleFonts.spaceGrotesk(
                              fontWeight: .w900,
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          ".00",
                          style: TextStyle(
                            fontWeight: .bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: .center,
            children: [
              Text(
                "Analytics",
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: .w900,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar appbaracc() {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Color(0xff0c2132),
      title: Row(
        children: [
          Text(
            "ABA",
            style: TextStyle(
              fontWeight: .w900,
              fontSize: 28,
              color: Colors.white,
              letterSpacing: 5,
            ),
          ),
          Text(
            "' ",
            style: TextStyle(
              fontWeight: .w900,
              fontSize: 38,
              color: Colors.red,
              letterSpacing: 5,
            ),
          ),
          Text(
            "Accounts",
            style: TextStyle(
              fontWeight: .bold,
              fontSize: 26,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
