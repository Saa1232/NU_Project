import 'package:flutter/material.dart';
import 'package:flutter_project_nu/constants/app_icon.dart';
import 'package:flutter_project_nu/routes/app_routes.dart';

class AccoutnNumber extends StatefulWidget {
  const AccoutnNumber({super.key});

  @override
  State<AccoutnNumber> createState() => _AccoutnNumberState();
}

class _AccoutnNumberState extends State<AccoutnNumber> {
  final TextEditingController _accountController = TextEditingController();

  String? accountError;

  void _validate() {
    setState(() {
      String input = _accountController.text.replaceAll(" ", "").trim();

      if (input != "008676261") {
        accountError = "Invalid account number";
      } else {
        accountError = null;
      }
    });

    if (accountError == null) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        AppRoutes.homeScreen,
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
                Navigator.pop(context);
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
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),

                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(48, 110, 143, 234),
                  ),
                  child: Center(
                    child: Image.asset(
                      appIconsHome.contactLogin,
                      color: Colors.white,
                      scale: 2,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  "Enter your Account Number",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 40),

                TextField(
                  controller: _accountController,
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "9 Digit ABA Account Number",
                    labelStyle: TextStyle(color: Colors.white70),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white54),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    errorText: accountError,
                    errorStyle: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 12,
                    ),
                  ),
                ),

                SizedBox(height: 30),

                Text(
                  "Please enter your registered ABA account number.",
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 40),

                GestureDetector(
                  onTap: _validate,
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
