import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:final_project_of_mobile/src/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Lottie.asset('assets/animations/internal-washing.json'),
          ),
          const SizedBox(height: 20),
          const Text(
            "CarWash",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
      backgroundColor: Colors.blue,
      nextScreen: const HomeView(),
      splashIconSize: 250,
      duration: 4000,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.topToBottom,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
