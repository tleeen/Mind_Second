import 'package:flutter/material.dart';

import '../../../shared/ui/button.dart';

class StartScreen extends StatelessWidget{
  const StartScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
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
                child: Text("Mind&Second",
                style: TextStyle(
                fontSize: 34),
                textAlign: TextAlign.center
                )
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Button(
                  icon: Icons.play_arrow, 
                  action: () {Navigator.of(context).pushNamed('/game');
                  }
                ),
              )
            ]
          )
        )
      );
  }
}