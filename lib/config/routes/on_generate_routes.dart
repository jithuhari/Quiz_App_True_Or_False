import 'package:flutter/material.dart';
import 'package:math_practice_quiz_game/Screens/Addition/additionByFourQuizPage.dart';
import 'package:math_practice_quiz_game/Screens/Addition/additionByOneQuizPage.dart';
import 'package:math_practice_quiz_game/Screens/Addition/additionByThreeQuizPage.dart';
import 'package:math_practice_quiz_game/Screens/Addition/additionByTwo.dart';
import 'package:math_practice_quiz_game/Screens/additionHome.dart';
import 'package:math_practice_quiz_game/Screens/quizPage.dart';
import 'package:math_practice_quiz_game/Screens/subHome.dart';
import 'package:math_practice_quiz_game/Screens/substraction/subByOneQuizPage.dart';
import 'package:math_practice_quiz_game/Screens/substraction/subByTwoQuizPage.dart';
import 'package:page_transition/page_transition.dart';

class OnGenerateRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case QuizPAge.routeName:
        return _getPageTransition(QuizPAge(), settings);
      case AdditionQuizPage.routeName:
        return _getPageTransition(AdditionQuizPage(), settings);
      case AdditionTwoQuizPage.routeName:
        return _getPageTransition(AdditionTwoQuizPage(), settings);
      case AdditionThreeQuizPage.routeName:
        return _getPageTransition(AdditionThreeQuizPage(), settings);
      case AdditionFourQuizPageState.routeName:
        return _getPageTransition(AdditionFourQuizPageState(), settings);  
      case Home.routeName:
        return _getPageTransition(Home(), settings);      
      case SubstractionHome.routeName:
        return _getPageTransition(SubstractionHome(), settings);
      case SubOneQuizPage.routeName:
        return _getPageTransition(SubOneQuizPage(), settings);   
      case SubTwoQuizPage.routeName:
        return _getPageTransition(SubTwoQuizPage(), settings);     
      default:
        return null;
    }
  }

  static PageTransition _getPageTransition(
      Widget child, RouteSettings settings) {
    return PageTransition(
      child: child,
      type: PageTransitionType.rightToLeft,
      duration: Duration(milliseconds: 600),
      reverseDuration: Duration(milliseconds: 600),
      settings: settings,
    );
  }
}
