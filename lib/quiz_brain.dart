import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;

  List <Question> _questionBank = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', false),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
}
  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool nextQuestion() {
    if (_questionNumber < _questionBank.length-1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
