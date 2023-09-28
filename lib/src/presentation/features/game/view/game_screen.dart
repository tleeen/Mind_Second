import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../../../domain/functionalClasses/task/interface/interface_task.dart';
import '../widgets/task.dart';

class GameScreen extends StatelessWidget{
  const GameScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

    var task = GetIt.I<InterfaceTask>();

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Mind&Second'
            ),
          ),
        body: Center(
          child: TaskWidget(answer: task.getAnswerForTask(),task: task.createTask()),
            ),
        );
  }
}