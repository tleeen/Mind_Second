import 'package:shared_preferences/shared_preferences.dart';

import '../../application/out/interface_repository_score.dart';

class RepositoryScore implements InterfaceRepositoryScore{

  @override
  void setScore(String key, int value) async {
    var preference = await SharedPreferences.getInstance();
    preference.setInt(key, value);
  }

  @override
  Future<int?> getScore(String key) async {
    var preference = await SharedPreferences.getInstance();
    return preference.getInt(key) ?? 0;
  }
}