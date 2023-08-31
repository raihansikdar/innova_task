import 'package:flutter/material.dart';
import 'package:innova_task/ui_screen/screen/home_page.dart';
import 'package:innova_task/ui_screen/screen/bottom_nav_screen.dart';
import 'package:innova_task/ui_screen/screen/login_screen.dart';
import 'package:innova_task/ui_screen/screen/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateToLogin();
    super.initState();
  }

  void navigateToLogin() async {

    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) =>  MainScreen(),
          ),
              (route) => false);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
          "assets/images/splash_screen.png",
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
      ),
    );
  }
}
