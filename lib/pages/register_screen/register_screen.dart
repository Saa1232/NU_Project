import 'package:flutter/material.dart';
import 'package:flutter_project_nu/routes/app_routes.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              _buildheader(),
              _buildLogin(),
              Spacer(),
              _buildnextbutton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildnextbutton() {
    return Container(
      width: .infinity,

      height: 55,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 204, 17, 4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 202, 25, 12),
        ),
        onPressed: () {
          setState(() {
            Navigator.pushNamedAndRemoveUntil(
              context,
              AppRoutes.homeScreen,
              (route) => false,
            );
          });
        },
        child: Text(
          "next".toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: .bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildheader() {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoutes.loginOrRegisterScreen,
                    (route) => false,
                  );
                });
              },
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
                size: 23,
                fontWeight: .bold,
              ),
            ),
            SizedBox(width: 15),
            Text(
              "ABA",
              style: TextStyle(
                fontWeight: .w700,
                fontSize: 28,
                color: Colors.white,
                letterSpacing: 3,
              ),
            ),
            Text(
              "'",
              style: TextStyle(
                fontWeight: .w900,
                fontSize: 32,
                color: const Color.fromARGB(255, 185, 15, 3),
                letterSpacing: 3,
              ),
            ),
            Text(
              " Instant Account",
              style: TextStyle(
                fontSize: 27,
                color: Colors.white,
                fontWeight: .bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 25),
        Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Icon(Icons.lock, color: Colors.white, size: 25),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
                    child: Text(
                      "****",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 26,
                        height: 0.6,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 15),
        Text(
          "Create Security PIN",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: .w400,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.67,
          child: FittedBox(
            child: Text(
              "This PIN will be required every time you ",
              style: TextStyle(color: Colors.white38),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.36,
          child: FittedBox(
            child: Text(
              "log in to ABA Mobile.",
              style: TextStyle(color: Colors.white38),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLogin() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          SizedBox(height: 40),
          Text(
            "Create 4-digit PIN",
            style: TextStyle(
              color: Colors.white54,
              fontWeight: .bold,
              fontSize: 13,
              height: 0.1,
            ),
          ),
          SizedBox(
            height: 45,
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.warning_amber, color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white54),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
          ),
          SizedBox(height: 45),
          Text(
            "Re-enter 4-digit PIN",
            style: TextStyle(
              color: Colors.white54,
              fontWeight: .bold,
              fontSize: 13,
              height: 0.1,
            ),
          ),

          SizedBox(
            height: 45,
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white54),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
