class AdditionQuestionModel {
  String? additionquestion;
  String? additionanswer;

  AdditionQuestionModel({this.additionquestion, this.additionanswer});

  void setadditionQuestion(String getAdditionQuestion) {
    additionquestion = getAdditionQuestion;
  }

  void setAdditionAnswer(String getAdditionQuestion) {
    additionanswer = getAdditionQuestion;
  }

  String? getAdditionQuestion() {
    return additionquestion;
  }

  String? getAdditionAnswer() {
    return additionanswer;
  }
}
