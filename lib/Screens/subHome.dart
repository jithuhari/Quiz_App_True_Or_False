import 'package:flutter/material.dart';
import 'package:math_practice_quiz_game/Screens/substraction/subByOneQuizPage.dart';
import 'package:math_practice_quiz_game/Screens/substraction/subByTwoQuizPage.dart';

class SubstractionHome extends StatefulWidget {
  static const routeName = '/SubHome';
  const SubstractionHome({Key? key}) : super(key: key);

  @override
  _SubstractionHomeState createState() => _SubstractionHomeState();
}

class _SubstractionHomeState extends State<SubstractionHome> {

  
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
                    SubOneQuizPage.routeName,
                  );
                },
                child: Text('Substraction by 1')),
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
                    SubTwoQuizPage.routeName,
                  );
                },
                child: Text('Substraction by 2')),
          ],
        ),
      ),
    );
  }
}
