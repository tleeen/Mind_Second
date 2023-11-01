import 'package:flutter/widgets.dart';

class RoundScore extends ChangeNotifier{
  
  late int roundScore;

  void setRoundScore(int score){
        roundScore = score;
        notifyListeners();
  }
} 