import 'package:flutter/material.dart';
import 'package:math_practice_quiz_game/Screens/additionHome.dart';
import 'package:math_practice_quiz_game/Screens/subHome.dart';

class HomeMain extends StatefulWidget {



  const HomeMain({ Key? key }) : super(key: key);

  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white
              ),
              onPressed: (){
                Navigator.pushNamed(
                    context,
                    Home.routeName,
                  );
              }, 
              child: Text('Addition')),

              SizedBox(height: 10,),

               ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white
              ),
              onPressed: (){
                 Navigator.pushNamed(
                    context,
                    SubstractionHome.routeName,
                  );
              }, 
              child: Text('Substraction')),

               SizedBox(height: 10,),

               ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white
              ),
              onPressed: (){}, 
              child: Text('Multiplication')),

               SizedBox(height: 10,),

               ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white
              ),
              onPressed: (){}, 
              child: Text('Division'))
          ],
        ),
      ),
      
    );
  }
}