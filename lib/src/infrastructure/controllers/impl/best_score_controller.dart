import 'package:get_it/get_it.dart';
import 'package:mind_second/src/infrastructure/controllers/interface/interface_best_score_controller.dart';

import '../../../application/in/services/score/api/interface_score.dart';

class BestScoreController implements InterfaceBestScoreController{
  InterfaceScore score = GetIt.I<InterfaceScore>();

  @override
  Future<int?> getBestScore(String key) async{
    return await score.getScore(key);
  }

  @override
  void setBestScore(String key, int value){
    score.setScore(key, value);
  }
}