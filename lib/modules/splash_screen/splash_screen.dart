import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import '../welcome_screen/welcom_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return AnimatedSplashScreen(
      splash: Image.asset('assets/images/logooooo.jpg'),
      nextScreen: const WelcomeScreen(),
      splashIconSize: size.width *.9,

    );
  }
}
