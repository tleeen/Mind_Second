import 'package:flutter/material.dart';

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
                child: SizedBox(
                    width: 88,
                    height: 88,
                    child: 
                      ElevatedButton(
                      onPressed: () {Navigator.of(context).pushNamed('/game');},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: const Icon(Icons.play_arrow),
                      ),
                  ),
              ),
            ]
          )
        )
      );
  }
}