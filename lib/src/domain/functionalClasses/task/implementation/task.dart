import 'dart:math';

import '../../operation/implementation/addition.dart';
import '../../operation/implementation/division.dart';
import '../../operation/implementation/multiplication.dart';
import '../../operation/implementation/subtraction.dart';
import '../interface/interface_task.dart';


class Task implements InterfaceTask{
  String? textTask;
  String? taskAnswer;

  @override
  String createTask() {
    return textTask!;
  }
  
  @override
  String getAnswerForTask() {
    return taskAnswer!;
  }

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