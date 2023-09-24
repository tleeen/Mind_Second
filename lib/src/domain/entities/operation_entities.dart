 import 'dart:math';

abstract class Operation{

  String visualization();
  String realization ();

}

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

class Subtraction implements Operation{

  int value1 = 0;
  int value2 = 1;

  @override
  String realization(){

    while((value1 <= value2)){
      value1 = Random().nextInt(90) + 10;
      value2 = Random().nextInt(10) + 2;
    }

    return (value1 - value2).toString();
  }

  @override
  String visualization(){
    return "$value1 - $value2";
  }
}

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


