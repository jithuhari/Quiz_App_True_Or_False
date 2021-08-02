import 'package:flutter/material.dart';
import 'package:math_practice_quiz_game/Screens/Addition/additionByFourQuizPage.dart';
import 'package:math_practice_quiz_game/Screens/Addition/additionByThreeQuizPage.dart';
import 'package:math_practice_quiz_game/Screens/Addition/additionByTwo.dart';
import 'package:math_practice_quiz_game/Screens/Addition/additionByOneQuizPage.dart';
import 'package:math_practice_quiz_game/Screens/quizPage.dart';

class Home extends StatefulWidget {
  static const routeName = '/AdditionHome';
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    QuizPAge.routeName,
                  );
                },
                child: Text('Mixed Calculations Quiz')),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    AdditionQuizPage.routeName,
                  );
                },
                child: Text('Addition with one')),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  
                  Navigator.pushNamed(
                    context,
                    AdditionTwoQuizPage.routeName,
                  );
                },
                child: Text('Addition with Two')),

                SizedBox(height: 10,),

                ElevatedButton(
              
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  
                 Navigator.pushNamed(
                    context,
                    AdditionThreeQuizPage.routeName,
                  );
                },
                child: Text('Addition with Three')),

                SizedBox(height: 10,),

                 ElevatedButton(
              
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  
                   Navigator.pushNamed(
                    context,
                    AdditionFourQuizPageState.routeName,
                  );
                },
                child: Text('Addition with Four'))
          ],
        ),
      ),
    );
  }
}
