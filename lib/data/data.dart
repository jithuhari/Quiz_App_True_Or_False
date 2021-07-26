import 'package:math_practice_quiz_game/models/questionModel.dart';
import 'dart:math';

List<QuestionModel> getQuestion() {
  List<QuestionModel> questions = [];
  QuestionModel questionModel = new QuestionModel();

  //1-15 Questions

  for (int i = 1; i <= 15; i++) {
    final number = 1;
    final question = nextNumber(min: 1, max: 5);
    dynamic sum;
    String symbalswith;
    final counter = Random().nextInt(4);
    if (counter == 0) {
      sum = question + number;
      symbalswith = '+';
    } else if (counter == 1) {
      sum = question - number;
      symbalswith = '-';
    } else if (counter == 2) {
      sum = question * number;
      symbalswith = '*';
    } else {
      sum = question / number;
      symbalswith = '/';
    }

    //Random Answer List With Correct Answer 
    final answerList = [
      sum,
      nextNumber(min: 1, max: 15),
    ];


    final answer = (answerList..shuffle()).first;
    questionModel.setQuestion('$question $symbalswith $number = $answer');
    final finalAnswer = answer;
    (sum == finalAnswer)
        ? questionModel.setAnswer('True')
        : questionModel.setAnswer('False');
    questions.add(questionModel);
    questionModel = new QuestionModel();
  }

  return questions;
}

int nextNumber({required int min, required int max}) =>

    //max 50 , min 5
    //1.50-5 = 45
    //2.Random.nextInt(45+1)=>0...45
    //3.5 + 0 ... 45 => 5...50

    min + Random().nextInt(max - min + 1);
