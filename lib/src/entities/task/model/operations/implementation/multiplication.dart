import 'dart:math';

import '../interface/operation.dart';

class Multiplication implements Operation{

  final int _value1 = Random().nextInt(10) + 2;
  final int _value2 = Random().nextInt(10) + 2;

  @override
  String getAnswerTaskOperation(){
    return (_value1 * _value2).toString();
  }

  @override
  String getTaskOperation(){
    return "$_value1 * $_value2";
  }
}