import 'package:flutter/material.dart';
import 'package:flutter_project_nu/constants/app_icon.dart';
import 'package:flutter_project_nu/routes/app_routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  String? countryError;
  String? phoneError;

  void _validate() {
    setState(() {
      countryError = _countryController.text.trim() != "+855"
          ? "Invalid country code"
          : null;

      phoneError = _phoneController.text.trim() != "011223844"
          ? "Invalid phone number"
          : null;
    });

    if (countryError == null && phoneError == null) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        AppRoutes.accountNumberScreen,
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff024164),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff024164),
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(context, "/registerOrLoginScreen");
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
              "Activation",
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildHead(),
              SizedBox(height: 40),
              _buildType(),
              SizedBox(height: 30),
              _buildNextBtn(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHead() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(48, 110, 143, 234),
              ),
              child: Center(child: Image.asset(appIconsHome.contactLogin)),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Enter your Phone number",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildType() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 120,
                width: 100,
                color: Color(0xff024164),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Country Code",
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    ),
                    TextField(
                      controller: _countryController,
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        errorText: countryError,
                        errorStyle: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 30),
              Expanded(
                child: Container(
                  height: 120,
                  color: Color(0xff024164),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Phone Number",
                        style: TextStyle(fontSize: 11, color: Colors.white),
                      ),
                      TextField(
                        controller: _phoneController,
                        keyboardType: TextInputType.numberWithOptions(),
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          errorText: phoneError,
                          errorStyle: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Text(
            "Your Phone number must be registered with ABA Bank. If not, please visit the nearest branch to update your personal details.",
            style: TextStyle(fontSize: 15, color: Colors.white70),
          ),
        ],
      ),
    );
  }

  Widget _buildNextBtn() {
    return GestureDetector(
      onTap: () {
        _validate();
      },
      child: Container(
        height: 50,
        width: double.infinity,
        color: Colors.red,
        child: Center(
          child: Text(
            "Next".toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
