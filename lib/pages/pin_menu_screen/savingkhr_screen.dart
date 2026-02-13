import 'package:flutter/material.dart';

class SavingkhrScreen extends StatefulWidget {
  const SavingkhrScreen({super.key});

  @override
  State<SavingkhrScreen> createState() => _SavingkhrScreenState();
}

class _SavingkhrScreenState extends State<SavingkhrScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c2132),
      appBar: appbarfav(),
      body: Column(
        children: [
          SizedBox(height: 50),
          _buildHeader(),
          SizedBox(height: 50),
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
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              "you haven't tranfer money yet!".toUpperCase(),
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ],
        ),
      ),
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
                "001 123 123",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: .bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Text(
            "0.00 USD",
            style: TextStyle(
              fontWeight: .w500,
              fontSize: 28,

              color: Colors.white,
            ),
          ),
          Text(
            "Total Balance: 0.00 USD",
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
