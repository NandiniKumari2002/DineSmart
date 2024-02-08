import 'dart:async';
import 'package:flutter/material.dart';
import 'HomePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDEABD1), // Change the background color here
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/3D Food Icon by @OdafeUI.png",
              width: 377,
              height: 573,
            ),
            Positioned(
              bottom: 230,
              child: Text(
                "DINESMART",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 40,
                  fontWeight: FontWeight.w400, // Corrected fontWeight
                  fontFamily: 'Jacques',
                  letterSpacing: -0.3
                  // color: Colors.white, // Change the text color here
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
