import 'dart:math';

import '../interface/operation.dart';

class Division implements Operation{

  int value1 = 0;
  int value2 = 1;

  @override
  String realization(){

    while((value1 % value2 != 0) || (value1 < value2)){
      value1 = Random().nextInt(90) + 10;
      value2 = Random().nextInt(10) + 2;
      }

    return (value1 / value2).round().toString();
  }

  @override
  String visualization(){
    return "$value1 / $value2";
  }
}