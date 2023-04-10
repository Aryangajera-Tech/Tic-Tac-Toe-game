import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tic Tac Toe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SpleshScreen(),
    );
  }
}

class SpleshScreen extends StatelessWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Tic',
            style: TextStyle(
                fontSize: 80, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Text(
            'Tac',
            style: TextStyle(
                fontSize: 80, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            'Toe',
            style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent),
          )
        ],
      ),
      backgroundColor: Colors.white,
      nextScreen: HomePage(),
      splashIconSize: 500,
      duration: 1500,
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
