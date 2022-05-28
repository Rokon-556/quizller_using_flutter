import 'package:flutter/material.dart';
import 'package:math_quizzller/widgets/reuseable_button.dart';
import 'package:math_quizzller/widgets/score_indicator.dart';

import '../widgets/quiz_body.dart';
import 'cir_pro_indicatror.dart';

class PortraitMode extends StatelessWidget {
  final highscore;
  final score;
  final quizBrainObject;
  final onTap;
  final percentValue;
  final totalTime;
  PortraitMode({
    @required this.highscore,
    @required this.score,
    @required this.quizBrainObject,
    @required this.onTap,
    @required this.totalTime,
    @required this.percentValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScoreIndicators(highscore: highscore, score: score),
        QuizBody(
          quizBrainObject: quizBrainObject,
        ),
        Expanded(
          flex: 2,
          child: CirPerIndicator(
            percentValue: percentValue,
            totalTime: totalTime,
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              ReUsableOutlineButton(
                color: Colors.redAccent,
                userChoice: 'FALSE',
                onTap: onTap,
              ),
              ReUsableOutlineButton(
                color: Colors.lightGreenAccent,
                userChoice: 'TRUE',
                onTap: onTap,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
