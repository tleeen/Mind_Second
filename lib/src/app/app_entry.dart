import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../entities/score/model/best_score.dart';
import '../entities/score/model/round_score.dart';
import '../entities/task/model/task/task_model.dart';
import '../shared/ui/timer/model/timer.dart';
import 'router/routes.dart';
import '../shared/ui/theme/theme.dart';

void main() {

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BestScore()),
        ChangeNotifierProvider(create: (_) => RoundScore()),
        ChangeNotifierProvider(create: (_) => FunctionalTimer()),
        ChangeNotifierProvider(create: (_) => TaskModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        routes: routes
      ),
    ),
  );
}