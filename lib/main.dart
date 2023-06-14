import 'package:flutter/material.dart';
import 'package:news_app/Layout/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         initialRoute: Home.routeName,
      routes: {
           Home.routeName:(_)=>Home(),
      },

    ); }
}

