import 'dart:math';

class QuizBrain {

  var _quiz='';


  var _quizAnswer='';

  void makeQuiz() {
    List<String> _listOfSign = ['+', '-', '*', '/'];
    Random _random = Random();
    var _selectedSign = _listOfSign[_random.nextInt(_listOfSign.length)];
    var _firstNumber = _random.nextInt(10) + 10;
    var _secondNumber = _random.nextInt(9) + 1;
    var _result;




    switch (_selectedSign) {
      case '+':
        _result = _firstNumber + _secondNumber;
        break;
      case '-':
        _result = _firstNumber - _secondNumber;
        break;
      case '*':
        _result = _firstNumber * _secondNumber;
        break;
      case '/':
        if (_firstNumber % _secondNumber != 0) {
          if (_firstNumber % 2 != 0) _firstNumber++;
          for (int i = _secondNumber; i > 0; i--) {
            if (_firstNumber % i == 0) {
              _secondNumber = i;
              break;
            }
          }
        }
        _result = _firstNumber ~/ _secondNumber;
    }
    var _falseMarker=[-3,-2,-1,1,2,3];
    var _randomlyChosen=_falseMarker[_random.nextInt(_falseMarker.length)];

    var _trueOrFalseIndicator=_random.nextInt(2);
    _quizAnswer='TRUE';
    if(_trueOrFalseIndicator==0){
      _quizAnswer='FALSE';
      _result=_result+_randomlyChosen;
      if(_result<0)_result=_result+_random.nextInt(2)+4;
    }
    _quiz='$_firstNumber $_selectedSign $_secondNumber = $_result ';
  }

  get quizAnswer => _quizAnswer;
  get quiz => _quiz;
}

