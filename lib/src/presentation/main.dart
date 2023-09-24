import 'dart:io';

import 'package:mind_and_second/src/domain/entities/score_entity.dart';
import 'package:mind_and_second/src/domain/entities/task_entity.dart';
import 'package:mind_and_second/src/domain/entities/timer_entity.dart';

void main(){

  String? gameIndicator; 

  print("Привет, пользователь. Давай сыграем в игру?");

  print("Введи ${"y"} для начала игры и ${"n"} для выхода");

  gameIndicator = stdin.readLineSync();

  while(gameIndicator == "y"){

    Scope scope = Scope();

    void game(){
      Task task = Task();
      Timer timer = Timer();

      print(task.textTask);

      timer.init();
      String? answer = stdin.readLineSync();

      if (timer.getValue()! <= 10 && answer == task.taskAnswer){  
        scope.increase();
        game();
    }
    else{
      print("Увы, твой счёт: ${scope.get()}");
    }
  }

  game();

    print("Введи ${"y"} для начала игры и ${"n"} для выхода");
    
    gameIndicator = stdin.readLineSync();
  }
  
  print("Было приятно иметь с тобой дело");
}