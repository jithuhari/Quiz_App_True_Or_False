import 'package:math_practice_quiz_game/models/questionModel.dart';

List<QuestionModel> getQuestion(){
  List<QuestionModel> questions = [];
  QuestionModel questionModel = new QuestionModel();

  //1
  questionModel.setQuestion('1 + 1 = 2');
  questionModel.setAnswer('True');
  questions.add(questionModel);
  questionModel = new QuestionModel();

  //2
  questionModel.setQuestion('5 + 1 = 3');
  questionModel.setAnswer('False');
  questions.add(questionModel);
  questionModel = new QuestionModel();

  //3
  questionModel.setQuestion('5 + 1 = 6');
  questionModel.setAnswer('True');
  questions.add(questionModel);
  questionModel = new QuestionModel();

  //4
  questionModel.setQuestion('8 + 1 = 9');
  questionModel.setAnswer('True');
  questions.add(questionModel);
  questionModel = new QuestionModel();

 //5
  questionModel.setQuestion('8 - 1 = 6');
  questionModel.setAnswer('False');
  questions.add(questionModel);
  questionModel = new QuestionModel();


  return questions;
}