import 'dart:io';

import 'package:mind_and_second/src/domain/entities/task_entity.dart';

class Game{

  int _count = 0;

  void startGame() async{
      Task task = Task();

      print(task.textTask);

      DateTime time1 = DateTime.now();
      String? answer = stdin.readLineSync();
      DateTime time2 = DateTime.now();

      if (time2.difference(time1).inSeconds <= 10 && answer == task.taskAnswer){  
        _count += 1;
        startGame();
    }
    else{
      print("Увы, твой счёт: $_count");
    }
  }
}