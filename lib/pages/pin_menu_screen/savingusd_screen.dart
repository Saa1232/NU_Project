import 'package:flutter/material.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                "Yesterday".toUpperCase(),
                style: TextStyle(color: Colors.white60),
              ),
              SizedBox(width: .infinity, height: 60),
            ],
          ),
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
            "Total Balance: 18.23 USD",
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
