import 'dart:math';

class Task{
  String? textTask;
  String? taskAnswer;

  Task(){

    int value1 = 0;
    int value2 = 1;
  
    List<String> operations = ["+", "-", "/", "*"];

    switch(operations[Random().nextInt(operations.length)])
    {
        case "+":{
              value1 = Random().nextInt(90) + 10;
              value2 = Random().nextInt(90) + 10;
              textTask = "$value1 + $value2";
              taskAnswer = (value1 + value2).toString();
            }
        case "-":{
              while((value1 <= value2)){
                value1 = Random().nextInt(90) + 10;
                value2 = Random().nextInt(10) + 2;
              }
              textTask = "$value1 - $value2";
              taskAnswer = (value1 - value2).toString();
            }
        case "/":{
              while((value1 % value2 != 0) || (value1 < value2)){
                value1 = Random().nextInt(90) + 10;
                value2 = Random().nextInt(10) + 2;
              }
              textTask = "$value1 / $value2";
              taskAnswer = (value1 / value2).round().toString();
            }
        case "*":{
              value1 = Random().nextInt(10) + 2;
              value2 = Random().nextInt(10) + 2;
              textTask = "$value1 * $value2";
              taskAnswer = (value1 * value2).toString();
            }
    }
  }
}