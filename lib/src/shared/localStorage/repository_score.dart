import 'package:shared_preferences/shared_preferences.dart';

class RepositoryScore{

  void setScore(int value) async {
    var preference = await SharedPreferences.getInstance();
    preference.setInt("bestScore", value);
  }

  Future<int> getScore() async {
    var preference = await SharedPreferences.getInstance();
    return preference.getInt("bestScore") ?? 0;
  }
}