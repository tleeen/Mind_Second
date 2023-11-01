import 'dart:math';

import 'package:flutter/material.dart';

import '../operations/implementation/addition.dart';
import '../operations/implementation/division.dart';
import '../operations/implementation/multiplication.dart';
import '../operations/implementation/subtraction.dart';
import '../operations/interface/operation.dart';

class Task extends ChangeNotifier{
  late String task;
  late String answerForTask;

  Task(){
    createTask();
  }

  void setTask(String value){
        task = value;
        notifyListeners();
  }

  void setAnswerForTask(String value){
        answerForTask = value;
        notifyListeners();
  }

  void createTask(){
    List<String> operations = ["+", "-", "/", "*"];
    Operation operation;

    switch(operations[Random().nextInt(operations.length)])
    {
        case "+":{
              operation = Addition();
            }
        case "-":{
              operation = Subtraction();
            }
        case "/":{
              operation = Division();
            }
        case "*":{
              operation = Multiplication();
            }
        default:{
              operation = Addition();
        }
    }

    answerForTask = operation.getAnswerTaskOperation();
    task = operation.getTaskOperation();

    notifyListeners();
  }
}