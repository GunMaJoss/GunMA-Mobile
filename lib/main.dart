import 'package:flutter/material.dart';
import 'package:gunma/HomePage/home_screen_backup.dart';
import 'package:gunma/SplashScreen/splashscreen/splashcreen2_page.dart';
// import 'package:gunma/HomePage/home_screen.dart';
import 'package:gunma/SplashScreen/splashscreen_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: "Lato",

    ),
    // debugShowCheckedModeBanner: false,
    title: 'Splash Screen',
    // home: HomePageScreen(),
    // home: HomePage(),
    home: SplashPage(),
    // home: Myapp(),s
  ));
}
