import 'package:shared_preferences/shared_preferences.dart';

import '../interface/i_repository_score.dart';

class RepositoryScore implements IRepositoryScore{

  @override
  void setScore(int value) async {
    var preference = await SharedPreferences.getInstance();
    preference.setInt("bestScore", value);
  }

  @override
  Future<int> getScore() async {
    var preference = await SharedPreferences.getInstance();
    return preference.getInt("bestScore") ?? 0;
  }
}