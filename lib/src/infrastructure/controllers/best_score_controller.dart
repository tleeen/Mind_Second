import 'package:get_it/get_it.dart';

import '../../application/in/services/score/api/interface_score.dart';

class BestScoreController{
  InterfaceScore score = GetIt.I<InterfaceScore>();

  Future<int?> getBestScore(String key) async{
    return await score.getScore(key);
  }

  void setBestScore(String key, int value){
    score.setScore(key, value);
  }
}