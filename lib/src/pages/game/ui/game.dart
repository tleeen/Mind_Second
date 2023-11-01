import 'package:flutter/material.dart';

import '../../../widgets/roundGame/ui/round_game.dart';

class GameScreen extends StatelessWidget{
  const GameScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Mind&Second'
        ),
      ),
      body: const Center(
        child: TaskWidget(),
      ),
    );
  }
}