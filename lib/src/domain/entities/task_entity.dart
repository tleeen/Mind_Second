import 'dart:math';

import 'package:mind_and_second/src/domain/entities/operation_entities.dart';

class Task{
  String? textTask;
  String? taskAnswer;

  Task(){
  
    List<String> operations = ["+", "-", "/", "*"];

    switch(operations[Random().nextInt(operations.length)])
    {
        case "+":{
              Addition addition = Addition();
              taskAnswer = addition.realization();
              textTask = addition.visualization();
            }
        case "-":{
              Subtraction subtraction = Subtraction();
              taskAnswer = subtraction.realization();
              textTask = subtraction.visualization();
            }
        case "/":{
              Division division = Division();
              taskAnswer = division.realization();
              textTask = division.visualization();
            }
        case "*":{
              Multiplication multiplication = Multiplication();
              taskAnswer = multiplication.realization();
              textTask = multiplication.visualization();
            }
    }
  }
}