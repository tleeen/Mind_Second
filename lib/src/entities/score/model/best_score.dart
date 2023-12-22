import 'package:flutter/widgets.dart';

import '../../../shared/lib/interface/i_repository_score.dart';
import '../lib/factory_repository_score.dart';

class BestScore extends ChangeNotifier{

  late int bestScore;

  final IRepositoryScore _repositoryScore = FactoryScoreRepository.createInstanceRepository('ls');

  void setBestScore(int score){
    bestScore = score;
    _repositoryScore.setScore(score);
    notifyListeners();
  }

  Future<void> initBestScore() async {
    bestScore = await _repositoryScore.getScore();
  }
} 