import 'package:math_practice_quiz_game/models/questionModel.dart';
import 'dart:math';

List<QuestionModel> getQuestion() {
  //int number = 1;
  // int q1 = nextNumber(min: 1, max: 5);
  // int q2 = nextNumber(min: 1, max: 5);
  // int q3 = nextNumber(min: 1, max: 5);
  // int q4 = nextNumber(min: 1, max: 5);
  // int q5 = nextNumber(min: 1, max: 5);
  // int q6 = nextNumber(min: 1, max: 5);
  // int q7 = nextNumber(min: 1, max: 5);
  // int q8 = nextNumber(min: 1, max: 5);
  // int q9 = nextNumber(min: 1, max: 5);
  // int q10 = nextNumber(min: 1, max: 5);
  // int answer1 = nextNumber(min: 2, max: 6);
  // int answer2 = nextNumber(min: 2, max: 6);
  // int answer3 = nextNumber(min: 2, max: 6);
  // int answer4 = nextNumber(min: 2, max: 6);
  // int answer5 = nextNumber(min: 2, max: 6);
  // int answer6 = nextNumber(min: 2, max: 6);
  // int answer7 = nextNumber(min: 2, max: 6);
  // int answer8 = nextNumber(min: 2, max: 6);
  // int answer9 = nextNumber(min: 2, max: 6);
  // int answer10 = nextNumber(min: 2, max: 6);
  // int a1 = q1 + number;
  // int a2 = q2 + number;
  // int a3 = q3 + number;
  // int a4 = q4 + number;
  // int a5 = q5 + number;
  // int a6 = q6 + number;
  // int a7 = q7 + number;
  // int a8 = q8 + number;
  // int a9 = q9 + number;
  // int a10 = q10 + number;

  List<QuestionModel> questions = [];
  QuestionModel questionModel = new QuestionModel();

//   //1

//   questionModel.setQuestion('$q1 + $number = $answer1');
//   final numbernew1 = answer1;
//   (a1 == numbernew1)
//       ? questionModel.setAnswer('True')
//       : questionModel.setAnswer('False');
//   questions.add(questionModel);
//   questionModel = new QuestionModel();

//   //2

//   questionModel.setQuestion('$q2 + $number = $answer2');
//   final numbernew2 = answer2;
//   (a2 == numbernew2)
//       ? questionModel.setAnswer('True')
//       : questionModel.setAnswer('False');
//   questions.add(questionModel);
//   questionModel = new QuestionModel();

//   // questionModel.setQuestion('5 + 1 = 3');
//   // questionModel.setAnswer('False');
//   // questions.add(questionModel);
//   // questionModel = new QuestionModel();

//   //   questionModel.setQuestion('$q2 + $number = $number2');

//   //   questionModel.setAnswer('False');

//   // //questionModel.setQuestion('$number + $number1 = $sum');

//   // questions.add(questionModel);
//   // questionModel = new QuestionModel();

// //   //3

//   questionModel.setQuestion('$q3 + $number = $answer3');
//   final numbernew3 = answer3;
//   (a3 == numbernew3)
//       ? questionModel.setAnswer('True')
//       : questionModel.setAnswer('False');
//   questions.add(questionModel);
//   questionModel = new QuestionModel();

//   //4

//   questionModel.setQuestion('$q4 + $number = $answer4');
//   final numbernew4 = answer4;
//   (a4 == numbernew4)
//       ? questionModel.setAnswer('True')
//       : questionModel.setAnswer('False');
//   questions.add(questionModel);
//   questionModel = new QuestionModel();

//   // questionModel.setQuestion('8 + 1 = 9');
//   // questionModel.setAnswer('True');
//   // questions.add(questionModel);
//   // questionModel = new QuestionModel();

//   //5
//   questionModel.setQuestion('$q5 + $number = $answer5');
//   final numbernew5 = answer5;
//   (a5 == numbernew5)
//       ? questionModel.setAnswer('True')
//       : questionModel.setAnswer('False');
//   questions.add(questionModel);
//   questionModel = new QuestionModel();

//   //6
//   questionModel.setQuestion('$q6 + $number = $answer6');
//   final numbernew6 = answer6;
//   (a6 == numbernew6)
//       ? questionModel.setAnswer('True')
//       : questionModel.setAnswer('False');
//   questions.add(questionModel);
//   questionModel = new QuestionModel();

//   //7
//   questionModel.setQuestion('$q7 + $number = $answer7');
//   final numbernew7 = answer7;
//   (a7 == numbernew7)
//       ? questionModel.setAnswer('True')
//       : questionModel.setAnswer('False');
//   questions.add(questionModel);
//   questionModel = new QuestionModel();

//   //8
//   questionModel.setQuestion('$q8 + $number = $answer8');
//   final numbernew8 = answer8;
//   (a8 == numbernew8)
//       ? questionModel.setAnswer('True')
//       : questionModel.setAnswer('False');
//   questions.add(questionModel);
//   questionModel = new QuestionModel();

//   //9
//   questionModel.setQuestion('$q9 + $number = $answer9');
//   final numbernew9 = answer9;
//   (a9 == numbernew9)
//       ? questionModel.setAnswer('True')
//       : questionModel.setAnswer('False');
//   questions.add(questionModel);
//   questionModel = new QuestionModel();

//   //10
//   questionModel.setQuestion('$q10 + $number = $answer10');
//   final numbernew10 = answer10;
//   (a10 == numbernew10)
//       ? questionModel.setAnswer('True')
//       : questionModel.setAnswer('False');
//   questions.add(questionModel);
//   questionModel = new QuestionModel();

  //11-15

  for (int i = 1; i <= 15; i++) {
    int number = 1;
    final question = nextNumber(min: 1, max: 5);
    final answer = nextNumber(min: 2, max: 6);
    final sum = question+number;
    questionModel.setQuestion('$question + $number = $answer');
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
