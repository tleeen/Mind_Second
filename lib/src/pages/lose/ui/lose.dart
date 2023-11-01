import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../entities/score/model/best_score.dart';
import '../../../entities/score/model/round_score.dart';
import '../../../shared/ui/button/ui/button.dart';


class LoseScreen extends StatelessWidget{
  const LoseScreen({super.key});

  @override
  Widget build(BuildContext context) {

    int bestScore = context.watch<BestScore>().bestScore;
    int roundScore = context.watch<RoundScore>().roundScore;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Mind&Second'
            ),
          ),
        body: Center(
          child: Column(
            textDirection: TextDirection.ltr,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Align(
                alignment: Alignment.bottomCenter,
                child: Text("Упс!",
                style: TextStyle(
                fontSize: 34),
                textAlign: TextAlign.center
                )
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text("${(bestScore == roundScore) ? "Новый" : "Твой"} рекорд: $bestScore",
                style: const TextStyle(
                fontSize: 30),
                textAlign: TextAlign.center
                )
              ),
              if(bestScore != roundScore)
                Align(
                alignment: Alignment.bottomCenter,
                child: Text("Твой счёт: $roundScore",
                style: const TextStyle(
                fontSize: 28),
                textAlign: TextAlign.center
                )
              ),
              Row(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Button(
                    icon: Icons.restart_alt_rounded, 
                    action: () {Navigator.of(context).pushNamed('/game');
                    }
                  ),
                  Button(
                    icon: Icons.home, 
                    action: () {Navigator.of(context).pushNamed('/');
                  }
                ),
             ],
            )
          ]
        )
      )
    );
  }
}