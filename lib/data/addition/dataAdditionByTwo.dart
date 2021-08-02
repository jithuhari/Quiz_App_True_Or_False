import 'package:math_practice_quiz_game/models/additionQuestionModel.dart';
import 'dart:math';

List<AdditionQuestionModel> getAdditionQuestion() {
  List<AdditionQuestionModel> questions = [];
  AdditionQuestionModel questionModel = new AdditionQuestionModel();

  //1-15 Questions

  for (int i = 1; i <= 15; i++) {
    
    final number = 2;
    final question = nextNumber(min: 1, max: 5);
     dynamic operation;
    // dynamic symbolswitch;
    // final counter = Random().nextInt(4);

    
    operation = question + number;

    //Random Answer List With Correct Answer
    final answerList = [
      operation,
      nextNumber(min: 1, max: 15),
    ];

    final answer = (answerList..shuffle()).first;
    questionModel.setadditionQuestion('$question + $number = $answer');
    final finalAnswer = answer;
    (operation == finalAnswer)
        ? questionModel.setAdditionAnswer('True')
        : questionModel.setAdditionAnswer('False');
    questions.add(questionModel);
    questionModel = new AdditionQuestionModel();
  }

  return questions;
}

// create a method to show randow numbers between 2 numbers
int nextNumber({required int min, required int max}) =>

    //max 50 , min 5
    //1.50-5 = 45
    //2.Random.nextInt(45+1)=>0...45
    //3.5 + 0 ... 45 => 5...50

    min + Random().nextInt(max - min + 1);