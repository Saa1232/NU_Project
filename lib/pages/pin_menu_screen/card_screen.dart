import 'package:flutter/material.dart';
import 'package:flutter_project_nu/constants/app_icon.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c2132),
      appBar: appbarnewcard(),
      body: Column(
        crossAxisAlignment: .start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: FittedBox(
                child: Text(
                  "Get instant access to funds\nand enable online payments\nwith ABA Card.",
                  style: GoogleFonts.spaceGrotesk(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          _buildmainsecond(),
        ],
      ),
    );
  }

  Widget _buildmainsecond() {
    return Expanded(
      child: Container(
        width: .infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 7, 24, 39),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            spacing: 10,
            crossAxisAlignment: .start,
            children: [
              Text(
                "Special Editiion Debit Cards",
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: .bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Container(
                width: .infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: Color(0xff212d39),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  mainAxisSize: .min,
                  spacing: 5,
                  children: [
                    Image.asset(appIconsHome.cardScreenIcon1, scale: 3),
                    Text(
                      "VannDa",
                      style: GoogleFonts.spaceGrotesk(
                        fontWeight: .w400,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "VISA",
                          style: GoogleFonts.spaceGrotesk(
                            fontWeight: .bold,
                            fontSize: 13,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Debit Card",
                          style: GoogleFonts.spaceGrotesk(
                            fontWeight: .w400,
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Text(
                "ABA Cards",
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: .bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              _buildContainerCustom(
                appIconsHome.cardScreenIcon2,
                "Debit Card",
                "Order your physical Debit Card and choose\nbetween pick-up and delivery options",
                appIconsHome.cardScreenIcon4,
              ),
              _buildContainerCustom(
                appIconsHome.cardScreenIcon3,
                "Virtual Debit Card",
                "Create and instand, free, virtual Visa,\nMatsercard, or UnionPay debit card for \nsecure online payments",
                appIconsHome.cardScreenIcon5,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainerCustom(
    String icon1,
    String title,
    String dis,
    String icon2,
  ) {
    return Container(
      width: .infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white12,
      ),
      child: Column(
        mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        children: [
          Row(
            crossAxisAlignment: .start,
            mainAxisAlignment: .start,
            children: [
              Image.asset(icon1, scale: 3),
              Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.spaceGrotesk(
                      fontWeight: .bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    dis,
                    style: GoogleFonts.spaceGrotesk(
                      fontWeight: .w400,
                      fontSize: 12,
                      color: Colors.white60,
                    ),
                  ),
                  Image.asset(icon2, scale: 3),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar appbarnewcard() {
    return AppBar(
      backgroundColor: Color(0xff0c2132),
      foregroundColor: Colors.white,
      title: Text(
        "New Card",
        style: GoogleFonts.spaceGrotesk(
          fontWeight: .bold,
          fontSize: 28,
          letterSpacing: 1,
          color: Colors.white,
        ),
      ),
    );
  }
}
