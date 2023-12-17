import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../../entities/score/model/best_score.dart';
import '../../../entities/score/model/round_score.dart';
import '../../../entities/task/model/task/task_model.dart';
import '../../../entities/timer/model/timer.dart';

void analysisAnswer(String answer, BuildContext context) {

        TaskModel task = context.read<TaskModel>();
        FunctionalTimer timer = context.read<FunctionalTimer>();
        BestScore stateBestScore = context.read<BestScore>();
        RoundScore stateRoundScore = context.read<RoundScore>();

        if (answer == task.answerForTask){
          task.createTask();
          stateRoundScore.setRoundScore(stateRoundScore.roundScore + 1);
          timer.restart();
        }
        else{
          if(stateRoundScore.roundScore > stateBestScore.bestScore){
              stateBestScore.setBestScore(stateRoundScore.roundScore);
            }
          Navigator.of(context).pushNamed('/lose');
          timer.pause();
        }
    }