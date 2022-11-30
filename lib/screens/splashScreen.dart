import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';


import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
     Timer(Duration(seconds: 5),(() => Navigator.pushReplacement(context, MaterialPageRoute(builder:((context) =>HomeScreen() )))));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Image.asset(
        width:double.infinity,
        fit:BoxFit.cover,
        "assets/images/splash.jpg")
    );
  }
}