import 'package:flutter/material.dart';
import 'package:flutter_project_nu/pages/home_screens/home_screen.dart';
import 'package:flutter_project_nu/pages/login_screens/login_screen.dart';
import 'package:flutter_project_nu/pages/option_login_and_register/login_or_register.dart';
import 'package:flutter_project_nu/pages/register_screen/register_screen.dart';
import 'package:flutter_project_nu/pages/splash_screens/splash_screen.dart';
import 'package:flutter_project_nu/routes/app_routes.dart';
import 'package:flutter_project_nu/routes/page_transition.dart';

class PageRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashScreen:
        return PageTransition.build(
          page: SplashScreen(),
          settings: settings,
          transition: PageTransitionType.fadeThrough,
          duration: Duration(milliseconds: 1500),
        );

      case AppRoutes.loginOrRegisterScreen:
        return PageTransition.build(
          page: LoginOrRegister(),
          settings: settings,
          transition: PageTransitionType.fadeThrough,
          duration: Duration(milliseconds: 1000),
        );

      case AppRoutes.loginScreen:
        return PageTransition.build(
          page: LoginScreen(),
          settings: settings,
          transition: PageTransitionType.fadeThrough,
          duration: Duration(milliseconds: 500),
        );

      case AppRoutes.registerScreen:
        return PageTransition.build(
          page: RegisterScreen(),
          settings: settings,
          transition: PageTransitionType.fadeThrough,
          duration: Duration(milliseconds: 500),
        );

      case AppRoutes.homeScreen:
        return PageTransition.build(
          page: HomeScreen(),
          settings: settings,
          transition: PageTransitionType.fadeThrough,
          duration: Duration(milliseconds: 500),
        );

      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Route not found"))),
        );
    }
  }
}
