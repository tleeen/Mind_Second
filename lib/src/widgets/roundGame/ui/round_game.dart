import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../entities/score/model/best_score.dart';
import '../../../entities/score/model/round_score.dart';
import '../../../entities/task/model/task/task.dart';
import '../../../features/enterAndCheckAnswer/ui/input.dart';
import '../../../shared/localStorage/repository_score.dart';
import '../../../shared/ui/timer/model/timer.dart';
import '../../../shared/ui/timer/ui/timer.dart';

class TaskWidget extends StatefulWidget{
  const TaskWidget({ super.key});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget>{

  TextEditingController fieldText = TextEditingController();
  RepositoryScore repositoryScore = RepositoryScore();

  void initBestScore() async{
      context.read<BestScore>().setBestScore(await repositoryScore.getScore());
    }

    @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero,(){
      context.read<FunctionalTimer>().setWaitTime(10);

      context.read<FunctionalTimer>().setCallback(() {
        if(Provider.of<RoundScore>(context, listen: false).roundScore > Provider.of<BestScore>(context, listen: false).bestScore){
          repositoryScore.setScore(context.read<RoundScore>().roundScore);
          Provider.of<BestScore>(context, listen: false).setBestScore(context.read<RoundScore>().roundScore);
          }
          Navigator.of(context).pushNamed('/lose');
        });
      context.read<Task>().createTask();
      context.read<RoundScore>().setRoundScore(0);
      context.read<FunctionalTimer>().start();
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
            context.watch<Task>().task,
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