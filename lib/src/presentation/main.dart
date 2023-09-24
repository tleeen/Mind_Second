import 'dart:io';

import 'package:mind_and_second/src/domain/entities/game_entity.dart';

void main(){

  String? gameIndicator; 

  print("Привет, пользователь. Давай сыграем в игру?");

  print("Введи ${"y"} для начала игры и ${"n"} для выхода");

  gameIndicator = stdin.readLineSync();

  while(gameIndicator == "y"){

    Game game = Game();
    game.init();

    print("Введи ${"y"} для начала игры и ${"n"} для выхода");
    
    gameIndicator = stdin.readLineSync();
  }
  
  print("Было приятно иметь с тобой дело");
}