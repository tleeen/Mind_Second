import 'dart:math';

import '../interface/operation.dart';

class Subtraction implements Operation{

  int _value1 = 0;
  int _value2 = 1;

  @override
  String getAnswerTaskOperation(){

    while((_value1 <= _value2)){
      _value1 = Random().nextInt(90) + 10;
      _value2 = Random().nextInt(10) + 2;
    }

    return (_value1 - _value2).toString();
  }

  @override
  String getTaskOperation(){
    return "$_value1 - $_value2";
  }
}