import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:news_app/views/home_view.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Center(
            child: LottieBuilder.asset(
                "assets/Lottie/Animation - 1718219814661.json"),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "Developed By Mohamed Hussein",
              style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              fontSize: 15),
            ),
          )
        ],
      ),
      nextScreen: const HomeView(),
      splashIconSize: 500,
      backgroundColor: Colors.blueAccent,
    );
  }
}
