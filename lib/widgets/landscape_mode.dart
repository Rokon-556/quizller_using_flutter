import 'package:flutter/material.dart';
import 'package:math_quizzller/widgets/reuseable_button.dart';
import 'package:math_quizzller/widgets/score_indicator.dart';

import '../widgets/quiz_body.dart';

import 'cir_pro_indicatror.dart';

class LandscapeMode extends StatelessWidget {
  final highscore;
  final score;
  final quizBrainObject;
  final onTap;
  final percentValue;
  final totalTime;
  LandscapeMode({
    @required this.highscore,
    @required this.score,
    @required this.quizBrainObject,
    @required this.onTap,
    @required this.totalTime,
    @required this.percentValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ReUsableOutlineButton(
          userChoice: 'FALSE',
          color: Colors.redAccent,
          onTap: onTap,
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              ScoreIndicators(highscore: highscore, score: score),
              QuizBody(
                quizBrainObject: quizBrainObject,
              ),
              Expanded(
                flex: 3,
                child: CirPerIndicator(
                  percentValue: percentValue,
                  totalTime: totalTime,
                ),
              ),
            ],
          ),
        ),
        ReUsableOutlineButton(
          userChoice: 'TRUE',
          color: Colors.lightGreenAccent,
          onTap: onTap,
        ),
      ],
    );
  }
}
