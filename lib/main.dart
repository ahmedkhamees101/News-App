import 'package:flutter/material.dart';
import 'package:news_app/Layout/home.dart';
import 'package:news_app/Layout/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
         initialRoute: SplashScreen.routeName,
      routes: {
           SplashScreen.routeName:(_)=>SplashScreen(),
           Home.routeName:(_)=>Home(),
      },

    ); }
}

