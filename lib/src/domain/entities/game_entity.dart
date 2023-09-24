import 'dart:io';

import 'package:mind_and_second/src/domain/entities/score_entity.dart';
import 'package:mind_and_second/src/domain/entities/task_entity.dart';
import 'package:mind_and_second/src/domain/entities/timer_entity.dart';

class Game{

  Scope scope = Scope();

  void init(){
      Task task = Task();
      Timer timer = Timer();

      print(task.textTask);

      timer.init();
      String? answer = stdin.readLineSync();

      if (timer.getValue()! <= 10 && answer == task.taskAnswer){  
        scope.increase;
        init();
    }
    else{
      print("Увы, твой счёт: $scope.get");
    }
  }
}