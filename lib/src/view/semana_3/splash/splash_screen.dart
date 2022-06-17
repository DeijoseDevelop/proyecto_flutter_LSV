import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:final_project_of_mobile/src/view/semana_3/splash/menu.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(
          children: [
            SizedBox(
              height: 195,
              width: 195,
              child: Lottie.asset('assets/animations/internal-washing.json'),
            ),
            const SizedBox(height: 20),
            const Text(
              "Car Wash",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        backgroundColor: Colors.blue,
        nextScreen: const Menu(),
        splashIconSize: 250,
        duration: 2000,
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.topToBottom,
        animationDuration: const Duration(seconds: 1),
    );
  }
}
