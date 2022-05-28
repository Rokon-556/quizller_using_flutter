import 'package:flutter/material.dart';
import 'package:math_quizzller/pages/game_screen.dart';
import 'package:math_quizzller/pages/welcome_screen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MathQuizApp());
}

class MathQuizApp extends StatelessWidget {
  const MathQuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.restoreSystemUIOverlays();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        GameScreen.id: (context) => GameScreen(),
      },
    );
  }
}
