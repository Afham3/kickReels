import 'package:flutter/material.dart';
import 'package:kick_reels/views/SplashScreen/splash_screen.dart';
import 'package:kick_reels/views/StartScreen/start_screen.dart';
import 'package:get/get.dart';
import 'views/CodeVerification/code_verification.dart';
import 'views/HomePage/homepage.dart';
import 'views/Login/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Kick-Reels',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

