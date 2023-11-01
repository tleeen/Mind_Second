import 'package:flutter/widgets.dart';

class BestScore extends ChangeNotifier{

  late int bestScore;

  void setBestScore(int score){
        bestScore = score;
        notifyListeners();
  }
} 