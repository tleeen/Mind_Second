import '../../shared/api/web_repository_score.dart' as API;
import '../../shared/lib/interface/i_repository_score.dart';
import '../../shared/lib/localStorage/repository_score.dart' as LocalStorage;

class FactoryScoreRepository {
  
  static IRepositoryScore createInstanceRepository(String flag) {

    if (flag == "api") {
      return API.WebRepositoryScore();
    } else if (flag == "ls") {
      return LocalStorage.RepositoryScore();
    } else {
      throw ArgumentError("Invalid flag");
    }
  }
}