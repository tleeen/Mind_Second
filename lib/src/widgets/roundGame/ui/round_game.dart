import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../entities/score/factory_repository_score.dart';
import '../../../entities/score/model/best_score.dart';
import '../../../entities/score/model/round_score.dart';
import '../../../entities/task/model/task/task_model.dart';
import '../../../features/enterAndCheckAnswer/ui/input.dart';
import '../../../shared/lib/interface/i_repository_score.dart';
import '../../../shared/ui/timer/model/timer.dart';
import '../../../shared/ui/timer/ui/timer.dart';

class TaskWidget extends StatefulWidget{
  const TaskWidget({ super.key});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget>{

  TextEditingController fieldText = TextEditingController();
  IRepositoryScore repositoryScore = FactoryScoreRepository.createInstanceRepository('api');

  void initBestScore() async{
      context.read<BestScore>().setBestScore(await repositoryScore.getScore());
    }

  @override
  void initState() {

    super.initState();

    TaskModel task = context.read<TaskModel>();
    FunctionalTimer timer = context.read<FunctionalTimer>();
    RoundScore roundScore = context.read<RoundScore>();
    BestScore bestScore = context.read<BestScore>();

    Future.delayed(Duration.zero,(){
      timer.setTime(10);
      timer.setCallback(() {
        if(roundScore.roundScore > bestScore.bestScore){
          repositoryScore.setScore(roundScore.roundScore);
          bestScore.setBestScore(roundScore.roundScore);
          }
          Navigator.of(context).pushNamed('/lose');
        });

      task.createTask();
      roundScore.setRoundScore(0);
      timer.start();

      initBestScore();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        const TimerWidget(),
        Align(
          alignment: Alignment.bottomCenter, 
          child: Text(
            context.watch<TaskModel>().task,
            style: const TextStyle(
              fontSize: 34
            ),
          ),
        ),
        Input(fieldText: fieldText),
      ],
    );
  }
}