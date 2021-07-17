import 'package:flutter/material.dart';

class Result extends StatefulWidget {

  int? score , 
  totalQuestion , 
  correct ,
  incorrect , 
  notAttended;

  Result({
    this.score ,
    this.totalQuestion , 
    this.correct ,
    this.incorrect ,
    this.notAttended});

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

  String greeting = "";

  @override
  void initState() {
   
    super.initState();

    var percentage = (widget.score!/(widget.totalQuestion!*1))*100;

    if(percentage >=90){
      greeting = "OutStanding";
    }else if(percentage >80 && percentage<90){
      greeting = "GoodWork";
    }else if(percentage >70 && percentage<80){
      greeting = "Good Effort"; 
    }else if(percentage <70){
      greeting = "Needs Improvement"; 
    }     
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
            children: [
              Text('$greeting'),
              Text('You Scored ${widget.score} Out of ${widget.totalQuestion!*1}'),
              Text('${widget.correct} correct , ${widget.incorrect} Incorrect , ${widget.notAttended} Not Attended out of ${widget.totalQuestion}' )
            ],
          ),      
    );
  }
}