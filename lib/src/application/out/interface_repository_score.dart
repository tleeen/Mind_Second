abstract class InterfaceRepositoryScore{
  void setScore(String key, int value);
  Future<int?> getScore(String key);
}