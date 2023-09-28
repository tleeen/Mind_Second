import 'package:flutter_application/src/application/in/services/score/api/interface_score.dart';
import 'package:flutter_application/src/application/in/services/score/implementation/score.dart';
import 'package:flutter_application/src/application/out/interface_repository_score.dart';
import 'package:flutter_application/src/infrastructure/local_storage/repository_score.dart';
import 'package:get_it/get_it.dart';

import '../../domain/functionalClasses/task/implementation/task.dart';
import '../../domain/functionalClasses/task/interface/interface_task.dart';

void registrationDependencies(){
  GetIt.I.registerFactory<InterfaceTask>(() => Task());
  GetIt.I.registerFactory<InterfaceRepositoryScore>(() => RepositoryScore());
  GetIt.I.registerFactory<InterfaceScore>(() => Score());
}
