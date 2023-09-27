import 'package:flutter/material.dart';

import '../Screens/gameScreen/game_screen.dart';
import '../Screens/loseScreen/lose_screeen.dart';
import '../Screens/startScreen/start_screen.dart';


class MindSecondApp extends StatelessWidget {
  const MindSecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.grey,
      ),
      routes: {
        "/" : (context) => const StartScreen(),
        "/game" : (context) => const GameScreen(),
        "/lose" : (context) => const LoseScreen()
      },
    );
  }
}