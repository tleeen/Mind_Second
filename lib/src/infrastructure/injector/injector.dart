import 'package:get_it/get_it.dart';

import '../../domain/functionalСlasses/task/implementation/task.dart';
import '../../domain/functionalСlasses/task/interface/interface_task.dart';

void registrationDependencies(){
  GetIt.I.registerFactory<Interface_Task>(() => Task());
}
