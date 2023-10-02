
import 'package:get_it/get_it.dart';
import 'package:mind_second/src/infrastructure/controllers/impl/best_score_controller.dart';
import 'package:mind_second/src/infrastructure/controllers/interface/interface_best_score_controller.dart';

import '../../application/in/services/score/api/interface_score.dart';
import '../../application/in/services/score/implementation/score.dart';
import '../../application/out/interface_repository_score.dart';
import '../../domain/functionalClasses/task/implementation/task.dart';
import '../../domain/functionalClasses/task/interface/interface_task.dart';
import '../local_storage/repository_score.dart';

void registrationDependencies(){
  GetIt.I.registerFactory<InterfaceTask>(() => Task());
  GetIt.I.registerFactory<InterfaceRepositoryScore>(() => RepositoryScore());
  GetIt.I.registerFactory<InterfaceScore>(() => Score());
  GetIt.I.registerFactory<InterfaceBestScoreController>(() => BestScoreController());
}
