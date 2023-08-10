import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animation_practice_1/view/Screens/home_page.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.amber.shade100,
              Colors.lightBlue.shade100,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: AnimatedSplashScreen(
          backgroundColor: Colors.transparent,
          animationDuration: const Duration(seconds: 1),
          splashIconSize: 200,
          splash: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.accessibility_rounded,
                  size: 100,
                  color: Colors.black,
                ),
              ]),
          nextScreen: const HomePage(),
        ),
      ),
    );
  }
}
