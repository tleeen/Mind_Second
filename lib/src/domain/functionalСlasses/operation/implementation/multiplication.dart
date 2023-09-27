import 'dart:math';

import '../interface/operation.dart';

class Multiplication implements Operation{

  int value1 = Random().nextInt(10) + 2;
  int value2 = Random().nextInt(10) + 2;

  @override
  String realization(){
    return (value1 * value2).toString();
  }

  @override
  String visualization(){
    return "$value1 * $value2";
  }
}