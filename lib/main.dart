import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:hodom/products_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(
    new MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Color(0xff51C0A9),
          fontFamily: 'Tajawal'),
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      home: new MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.black,
      duration: 100,
      splash: 'assets/logo.png',
      splashIconSize: 150,
      nextScreen: HomeScreen(),
    );
  }
}
