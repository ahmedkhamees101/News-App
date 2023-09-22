import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/Layout/home.dart';

class SplashScreen extends StatelessWidget {
 static const String routeName="Splash";
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Home.routeName);
    });
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Image.asset("assets/images/pattern.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
               child: Image.asset("assets/images/logo.png",),
          ),
        ),
      ],

    );
  }
}
