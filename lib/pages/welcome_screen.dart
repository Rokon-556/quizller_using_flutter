import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:math_quizzller/constants.dart';
import 'package:math_quizzller/pages/game_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static final id = 'welcome_screen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/backgroundImage.png'),
          fit: BoxFit.cover,
        )),
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: (){
            Navigator.pushNamed(context, GameScreen.id);
          },
          child: AbsorbPointer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText('Math Quiz \nGame',
                        textAlign: TextAlign.center,
                        textStyle: kAnimationTextStyle,
                        colors: kAnimatedTextColor),
                  ],
                  repeatForever: true,
                ),
                const Text('Tap to Start',
                    textAlign: TextAlign.center, style: kTapToStartTextStyle)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
