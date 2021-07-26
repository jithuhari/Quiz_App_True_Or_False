import 'dart:math';

class DataDetails{
  final questionrandom = nextNumber(min: 1, max: 5);
  final answer = nextNumber(min: 2, max: 6);
  
}

int nextNumber({required int min, required int max}) =>

    //max 50 , min 5
    //1.50-5 = 45
    //2.Random.nextInt(45+1)=>0...45
    //3.5 + 0 ... 45 => 5...50

    min + Random().nextInt(max - min + 1);
