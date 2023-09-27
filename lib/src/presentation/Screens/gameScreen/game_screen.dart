import 'package:flutter/material.dart';

import '../../../domain/functionalСlasses/task/implementation/task.dart';
import '../../Widgets/task_widget.dart';

class GameScreen extends StatelessWidget{
  const GameScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    Task task = Task();
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