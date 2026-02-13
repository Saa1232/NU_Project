import 'package:flutter/material.dart';
import 'package:flutter_project_nu/constants/app_icon.dart';
import 'package:google_fonts/google_fonts.dart';

class SavingusdScreen extends StatefulWidget {
  const SavingusdScreen({super.key});

  @override
  State<SavingusdScreen> createState() => _SavingusdScreenState();
}

class _SavingusdScreenState extends State<SavingusdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c2132),
      appBar: appbarfav(),
      body: Column(
        crossAxisAlignment: .start,
        children: [
          SizedBox(height: 50),
          _buildHeader(),
          SizedBox(height: 40),
          _buildfooter(),
        ],
      ),
    );
  }

  Widget _buildfooter() {
    return Expanded(
      child: Container(
        width: .infinity,
        decoration: BoxDecoration(
          color: Color(0xff101c28),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _buildrecipt2();
                });
              },
              child: containerRec1(),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _buildrecipt1();
                });
              },
              child: containerRec2(),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> _buildrecipt2() {
    return showModalBottomSheet(
      context: context,

      builder: (context) {
        return Container(
          width: .infinity,
          decoration: BoxDecoration(
            color: Color(0xff212d39),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: .start,
            mainAxisSize: .min,
            children: [
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: .start,
                children: [
                  SizedBox(width: 20),
                  Container(
                    width: 60,
                    height: 70,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 106, 247, 111),
                      shape: BoxShape.circle,
                    ),

                    child: Center(
                      child: Text(
                        "DS",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: .bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        crossAxisAlignment: .end,
                        children: [
                          Text(
                            "50,000,000.00",
                            style: GoogleFonts.spaceGrotesk(
                              fontWeight: .bold,
                              fontSize: 26,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "USD",
                            style: GoogleFonts.spaceGrotesk(
                              fontWeight: .bold,
                              fontSize: 18,
                              color: Colors.white,
                              height: 1.8,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Recieved from DANY SOVAN",
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  child: Text(
                    "----------------------------",
                    style: TextStyle(
                      height: 0,
                      color: Colors.white54,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Text("Trx. ID:", style: TextStyle(color: Colors.white54)),
                    Spacer(),
                    Text(
                      "9238234243",
                      style: TextStyle(fontWeight: .bold, color: Colors.white),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Text(
                      "Transaction date:",
                      style: TextStyle(color: Colors.white54),
                    ),
                    Spacer(),
                    Text(
                      "Feb 12, 2026 11:21PM",
                      style: TextStyle(fontWeight: .bold, color: Colors.white),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Text(
                      "Original amount:",
                      style: TextStyle(color: Colors.white54),
                    ),
                    Spacer(),
                    Text(
                      "50,000,000.00 USD",
                      style: TextStyle(fontWeight: .bold, color: Colors.white),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Text(
                      "From account:",
                      style: TextStyle(color: Colors.white54),
                    ),
                    Spacer(),
                    Text(
                      "002 123 123",
                      style: TextStyle(fontWeight: .bold, color: Colors.white),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  Future<dynamic> _buildrecipt1() {
    return showModalBottomSheet(
      context: context,

      builder: (context) {
        return Container(
          width: .infinity,
          decoration: BoxDecoration(
            color: Color(0xff212d39),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: .start,
            mainAxisSize: .min,
            children: [
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: .start,
                children: [
                  SizedBox(width: 20),
                  Container(
                    width: 60,
                    height: 70,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 106, 247, 111),
                      shape: BoxShape.circle,
                    ),

                    child: Center(
                      child: Text(
                        "DS",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: .bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        crossAxisAlignment: .end,
                        children: [
                          Text(
                            "50,000,000.00",
                            style: GoogleFonts.spaceGrotesk(
                              fontWeight: .bold,
                              fontSize: 26,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "USD",
                            style: GoogleFonts.spaceGrotesk(
                              fontWeight: .bold,
                              fontSize: 18,
                              color: Colors.white,
                              height: 1.8,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Recieved from SOK SOVAN MAKARA",
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  child: Text(
                    "----------------------------",
                    style: TextStyle(
                      height: 0,
                      color: Colors.white54,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Text("Trx. ID:", style: TextStyle(color: Colors.white54)),
                    Spacer(),
                    Text(
                      "92384892343",
                      style: TextStyle(fontWeight: .bold, color: Colors.white),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Text(
                      "Transaction date:",
                      style: TextStyle(color: Colors.white54),
                    ),
                    Spacer(),
                    Text(
                      "Feb 09, 2026 11:21PM",
                      style: TextStyle(fontWeight: .bold, color: Colors.white),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Text(
                      "Original amount:",
                      style: TextStyle(color: Colors.white54),
                    ),
                    Spacer(),
                    Text(
                      "50,000,000.00 USD",
                      style: TextStyle(fontWeight: .bold, color: Colors.white),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    Text(
                      "From account:",
                      style: TextStyle(color: Colors.white54),
                    ),
                    Spacer(),
                    Text(
                      "002 232 123",
                      style: TextStyle(fontWeight: .bold, color: Colors.white),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  Column containerRec1() {
    return Column(
      crossAxisAlignment: .start,
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Yesterday".toUpperCase(),
            style: TextStyle(color: Colors.white60),
          ),
        ),
        SizedBox(height: 10),
        Container(
          width: .infinity,
          height: 70,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(color: Colors.white12),
          child: Row(
            children: [
              Container(
                width: 60,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 36, 250, 107),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "DS",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: .bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Dany Sovan".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: .w400,
                ),
              ),
              Spacer(),
              Text(
                "50,000,000.00",
                style: TextStyle(
                  fontWeight: .bold,
                  color: Colors.green,
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 5),
              Text(
                "usd".toUpperCase(),
                style: TextStyle(color: Colors.green, fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column containerRec2() {
    return Column(
      crossAxisAlignment: .start,
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "09 feb 2026".toUpperCase(),
            style: TextStyle(color: Colors.white60),
          ),
        ),
        SizedBox(height: 10),
        Container(
          width: .infinity,
          height: 70,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(color: Colors.white12),
          child: Row(
            children: [
              Container(
                width: 60,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 36, 250, 107),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "DS",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: .bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Text(
                "sok sovanmakara".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: .w400,
                ),
              ),
              Spacer(),
              Text(
                "50,000,000.00",
                style: TextStyle(
                  fontWeight: .bold,
                  color: Colors.green,
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 5),
              Text(
                "usd".toUpperCase(),
                style: TextStyle(color: Colors.green, fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Center(
      child: Column(
        crossAxisAlignment: .center,
        children: [
          Row(
            mainAxisAlignment: .center,
            children: [
              Text(
                "Savings",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: .bold,
                  fontSize: 16,
                ),
              ),
              Text(
                " | ",
                style: TextStyle(color: Colors.white38, fontSize: 16),
              ),
              Text(
                "001 123 231",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: .bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Text(
            "100,000,000.00 USD",
            style: TextStyle(
              fontWeight: .w500,
              fontSize: 28,

              color: Colors.white,
            ),
          ),
          Text(
            "Total Balance: 100,000,000.00 USD",
            style: TextStyle(
              color: Colors.white54,
              fontWeight: .w400,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  AppBar appbarfav() {
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
              letterSpacing: 3,
            ),
          ),
          Text(
            "'",
            style: TextStyle(
              fontWeight: .w900,
              fontSize: 38,
              color: Colors.red,
              letterSpacing: 5,
            ),
          ),
          SizedBox(width: 5),
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
