import 'package:flutter/material.dart';
import 'package:math_practice_quiz_game/Screens/homeMain.dart';
import 'package:math_practice_quiz_game/config/routes/on_generate_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeMain(),
      onGenerateRoute: OnGenerateRoutes.onGenerateRoute
    );
  }
}
