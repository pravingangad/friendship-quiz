import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Questions> _questionBank = [
    Questions(
        q: 'Good friends should lie to you to make you feel better about yourself, rather than telling you the truth...because it\'s the right thing to do.',
        a: false),
    Questions(
        q: 'A friend should tell you to see a counsellor if you had a bad day and he/she doesn\'t feel like hearing about it.',
        a: false),
    Questions(
        q: 'Good friends can disagree without hurting each other.', a: true),
    Questions(
        q: 'Friends should borrow each others\' clothes and misplace them, and repeatedly lie about the situation.',
        a: false),
    Questions(
        q: 'A friend should keep everything bottled up inside so that arguments don\'t arise.',
        a: false),
    Questions(q: 'Friends should be selfish and not selfless.', a: false),
    Questions(q: 'Good friends give each other room to change. ', a: true),
    Questions(
        q: 'You should never be friends with someone your other friends don\'t like.',
        a: false),
    Questions(
        q: 'You can only manage having so many friends before you become overwhelmed.',
        a: false),
    Questions(
        q: 'To communicate well with your friends, you should establish that the only way you can all get along is if you, personally, are always considered to be right.',
        a: false),
    Questions(
        q: 'Hanging out with your friends should be a fun experience and should NOT feel like a task.',
        a: true),
    Questions(
        q: 'Friends should be willing to stick up for each other.', a: true),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
