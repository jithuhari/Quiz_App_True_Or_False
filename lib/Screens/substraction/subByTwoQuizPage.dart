import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_practice_quiz_game/Screens/result.dart';
import 'package:math_practice_quiz_game/data/substraction/dataSubByTwo.dart';
import 'package:math_practice_quiz_game/models/additionQuestionModel.dart';


class SubTwoQuizPage extends StatefulWidget {
  static const routeName = '/SubTwoPage';

  @override
  _SubTwoQuizPageState createState() => _SubTwoQuizPageState();
}

class _SubTwoQuizPageState extends State<SubTwoQuizPage>
    with SingleTickerProviderStateMixin {
  List<AdditionQuestionModel> questions = [];
  int index = 0;
  int correct = 0, incorrect = 0, notAttempted = 0, points = 0;
  double beginAnim = 0.0;
  double endAnim = 1.0;

  Animation? animation;
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();

    questions = getAdditionQuestion();

    animationController =
        AnimationController(duration: const Duration(seconds: 10), vsync: this)
          ..addListener(() {
            setState(() {});
          });

    animation =
        Tween(begin: beginAnim, end: endAnim).animate(animationController!);
    startAnim();

    animationController!.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          if (index < questions.length - 1) {
            index++;
            resetAnim();
            startAnim();
            notAttempted++;
          } else {
            notAttempted++;
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => Result(
                          score: correct,
                          totalQuestion: questions.length,
                          correct: correct,
                          incorrect: incorrect,
                          notAttended: notAttempted,
                        )));
          }
        });
      }
    });
  }

  startAnim() {
    animationController!.forward();
  }

  resetAnim() {
    animationController!.reset();
  }

  stopAnim() {
    animationController!.stop();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    return Scaffold(
      body: Stack(
        children: [
          Image(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
            image: AssetImage('assets/images/kids1.jpg'),
          ),
          Column(
            children: [
              //Linear progress animation
              Container(
                child: LinearProgressIndicator(
                  value: animation!.value,
                  color: Colors.red,
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .1,
                  ),
                  Text(
                    '${index + 1}/${questions.length}',
                    style: TextStyle(
                        color: Colors.indigo.shade900,
                        fontWeight: FontWeight.w500,
                        fontSize: 24),
                  ),
                  Text(
                    ' Question',
                    style: TextStyle(
                        color: Colors.indigo.shade900,
                        fontWeight: FontWeight.w400,
                        fontSize: 17),
                  ),
                  Spacer(),
                  Text(
                    '$points',
                    style: TextStyle(
                        color: Colors.indigo.shade900,
                        fontWeight: FontWeight.w500,
                        fontSize: 24),
                  ),
                  Text(
                    ' Points',
                    style: TextStyle(
                        color: Colors.indigo.shade900,
                        fontWeight: FontWeight.w400,
                        fontSize: 17),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .1,
                  )
                ],
              ),

              Text(
                '${questions[index].getAdditionQuestion()}',
                style: TextStyle(
                    color: Colors.indigo.shade900,
                    fontWeight: FontWeight.w500,
                    fontSize: 25),
              ),
              Spacer(),
              Row(
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      if (index < questions.length - 1) {
                        if (questions[index].getAdditionAnswer() == "True") {
                          setState(() {
                            points = points + 1;
                            index++;
                            correct++;
                            resetAnim();
                            startAnim();
                          });
                        } else {
                          //points = points - 1;
                          index++;
                          incorrect++;
                          resetAnim();
                          startAnim();
                        }
                      } else {
                        if (questions[index].getAdditionAnswer() == "True") {
                          correct++;
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Result(
                                        score: points,
                                        totalQuestion: questions.length,
                                        correct: correct,
                                        incorrect: incorrect,
                                        notAttended: notAttempted,
                                      )));
                        } else {
                          incorrect++;
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Result(
                                        score: points,
                                        totalQuestion: questions.length,
                                        correct: correct,
                                        incorrect: incorrect,
                                        notAttended: notAttempted,
                                      )));
                        }
                        //incorrect++;

                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.check,
                        size: 50,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      if (index < questions.length - 1) {
                        if (questions[index].getAdditionAnswer() == "False") {
                          setState(() {
                            points = points + 1;
                            index++;
                            correct++;
                            resetAnim();
                            startAnim();
                          });
                        } else {
                          //points = points - 1;
                          index++;
                          incorrect++;
                          resetAnim();
                          startAnim();
                        }
                      } else {
                        if (questions[index].getAdditionAnswer() == "False") {
                          correct++;
                          //incorrect++;
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Result(
                                        score: points,
                                        totalQuestion: questions.length,
                                        correct: correct,
                                        incorrect: incorrect,
                                        notAttended: notAttempted,
                                      )));
                        } else {
                          //correct++;
                          incorrect++;
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Result(
                                        score: points,
                                        totalQuestion: questions.length,
                                        correct: correct,
                                        incorrect: incorrect,
                                        notAttended: notAttempted,
                                      )));
                        }
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.close,
                        size: 50,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .3,
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }
}
