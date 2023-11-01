import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../../entities/score/model/best_score.dart';
import '../../../entities/score/model/round_score.dart';
import '../../../entities/task/model/task/task.dart';
import '../../../shared/localStorage/repository_score.dart';
import '../../../shared/ui/timer/model/timer.dart';

void checkAnswer(String answer, TextEditingController fieldText, BuildContext context) {
        fieldText.clear();

        FunctionalTimer timer = context.read<FunctionalTimer>();
        BestScore stateBestScore = context.read<BestScore>();
        RoundScore stateRoundScore = context.read<RoundScore>();
        RepositoryScore repositoryScore = RepositoryScore();

        if (answer == context.read<Task>().answerForTask){
          context.read<Task>().createTask();
          stateRoundScore.setRoundScore(stateRoundScore.roundScore + 1);
          timer.restart();
        }
        else{
          if(stateRoundScore.roundScore > stateBestScore.bestScore){
              repositoryScore.setScore(stateRoundScore.roundScore);
              stateBestScore.setBestScore(stateRoundScore.roundScore);
            }
          Navigator.of(context).pushNamed('/lose');
          timer.pause();
        }
        
        timer.setIsStart(true);
        timer.setPercent(1.0);
        timer.setTimeStr("10:00");
        timer.setWaitTime(10);
    }