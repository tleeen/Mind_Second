import 'package:get_it/get_it.dart';

import '../../../../out/interface_repository_score.dart';
import '../api/interface_score.dart';

class Score implements InterfaceScore{

  InterfaceRepositoryScore repositoryScore = GetIt.I<InterfaceRepositoryScore>();

  @override
  Future<int?> getScore(String key) async{
    return await repositoryScore.getScore(key);
  }

  @override
  void setScore(String key, int value) {
    repositoryScore.setScore(key, value);
  }
}