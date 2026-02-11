import 'package:flutter/material.dart';
import 'package:flutter_project_nu/pages/pin_menu_screen/payment_screen.dart';
import 'package:flutter_project_nu/pages/pin_menu_screen/transfer_screen.dart';
import 'package:flutter_project_nu/routes/app_routes.dart';
import 'package:flutter_project_nu/routes/page_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xff024164)),
      initialRoute: AppRoutes.splashScreen,
      onGenerateRoute: PageRoutes.onGenerateRoute,
      //home: TransferScreen(),
    );
  }
}
