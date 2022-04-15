import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'screens/login_screen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new LoginScreen(),
      image: new Image.network(
          'https://github.com/sarthakdharia/Movify/blob/main/newfold/logo_movify.png?raw=true'),
      loadingText: Text(
        "Loading",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      photoSize: 100.0,
      loaderColor: Colors.cyanAccent,
      gradientBackground: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.1, 0.9],
        colors: [
          Color.fromARGB(255, 0, 0, 0),
          Color.fromARGB(255, 42, 47, 48),
        ],
      ),
      // gradientBackground,: LinearGradient(
      //         begin: Alignment.topRight,
      //         end: Alignment.bottomLeft,
      //         colors: [
      //           Colors.blue,
      //           Colors.red,
      //         ],),
    );
  }
}
