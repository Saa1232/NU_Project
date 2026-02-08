import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_nu/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState

    Future.delayed(Duration(milliseconds: 1600), () {
      setState(() {
        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.loginOrRegisterScreen,
          (route) => false,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: .center,
              children: [
                AnimatedTextKit(
                  pause: Duration(milliseconds: 1000),
                  totalRepeatCount: 1,
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    FadeAnimatedText(
                      "aba".toUpperCase(),
                      textStyle: TextStyle(
                        fontWeight: .w700,
                        fontSize: 30,
                        letterSpacing: 4,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                AnimatedTextKit(
                  pause: Duration(milliseconds: 1500),
                  totalRepeatCount: 1,
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    FadeAnimatedText(
                      "'".toUpperCase(),
                      textStyle: TextStyle(
                        fontWeight: .w900,
                        fontSize: 20,
                        letterSpacing: 4,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                AnimatedTextKit(
                  pause: Duration(milliseconds: 1500),
                  totalRepeatCount: 1,
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    FadeAnimatedText(
                      " Mobile",
                      textStyle: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: .center,
              children: [
                AnimatedTextKit(
                  pause: Duration(milliseconds: 1000),
                  totalRepeatCount: 1,
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    FadeAnimatedText(
                      "aba".toUpperCase(),
                      textStyle: TextStyle(
                        fontWeight: .w700,
                        fontSize: 15,
                        letterSpacing: 4,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                AnimatedTextKit(
                  pause: Duration(milliseconds: 1500),
                  totalRepeatCount: 1,
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    FadeAnimatedText(
                      "'".toUpperCase(),
                      textStyle: TextStyle(
                        fontWeight: .w900,
                        fontSize: 15,
                        letterSpacing: 4,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                AnimatedTextKit(
                  pause: Duration(milliseconds: 1500),
                  totalRepeatCount: 1,
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    FadeAnimatedText(
                      " BANK | ",
                      textStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: .bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 20,
                          decoration: BoxDecoration(color: Colors.red),
                        ),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            AnimatedTextKit(
                              pause: Duration(milliseconds: 1500),
                              totalRepeatCount: 1,
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                FadeAnimatedText(
                                  "national bank".toUpperCase(),
                                  textStyle: TextStyle(
                                    fontWeight: .w900,
                                    fontSize: 10,

                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            AnimatedTextKit(
                              pause: Duration(milliseconds: 1500),
                              totalRepeatCount: 1,
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                FadeAnimatedText(
                                  " of cambodia group".toUpperCase(),
                                  textStyle: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: .w900,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
