import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants.dart';


class ShowAlertDialog extends StatelessWidget {
  final score;
  final totalNumberOfQuizzes;
  final startGame;

  ShowAlertDialog(
      {@required this.score,
        @required this.totalNumberOfQuizzes,
        @required this.startGame});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            25,
          )),
      backgroundColor: Color(0xff1542bf),
      title: FittedBox(
        child: const Text('GAME OVER',
            textAlign: TextAlign.center, style: kTitleTS),
      ),
      content: Text('Score: $score | $totalNumberOfQuizzes',
          textAlign: TextAlign.center, style: kContentTS),
      actions: [
        TextButton(
          onPressed: () {
            SystemNavigator.pop();
          },
          child: const Text('EXIT', style: kDialogButtonsTS),
        ),
        TextButton(
          onPressed: () {
            startGame();
            Navigator.of(context).pop();
          },
          child: const Text('PLAY AGAIN', style: kDialogButtonsTS),
        )
      ],
    );
  }
}
