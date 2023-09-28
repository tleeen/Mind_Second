import 'dart:math';

import '../interface/operation.dart';

class Addition implements Operation{

  int value1 = Random().nextInt(90) + 10;
  int value2 = Random().nextInt(90) + 10;

  @override
  String realization(){
    return (value1 + value2).toString();
  }

  @override
  String visualization(){
    return "$value1 + $value2";
  }
}