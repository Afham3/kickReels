import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width*1;
    return  Scaffold(
      backgroundColor: const Color.fromARGB(192, 37, 77, 50),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: height*0.3,
            width: width*0.5,
            child: Image.asset("assets/images/1.jpg"),
            ),
        ],
      ),
    );
  }
}