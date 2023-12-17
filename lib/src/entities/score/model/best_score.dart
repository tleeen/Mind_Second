import 'package:flutter/widgets.dart';

import '../../../shared/lib/interface/i_repository_score.dart';
import '../factory_repository_score.dart';

class BestScore extends ChangeNotifier{

  late int bestScore;

  IRepositoryScore repositoryScore = FactoryScoreRepository.createInstanceRepository('api');

  void setBestScore(int score){
    bestScore = score;
    repositoryScore.setScore(score);
    notifyListeners();
  }

  Future<void> initBestScore() async {
    bestScore = await repositoryScore.getScore();
  }
} 