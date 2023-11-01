import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../entities/score/model/best_score.dart';
import '../entities/score/model/round_score.dart';
import '../entities/task/model/task/task.dart';
import '../shared/ui/timer/model/timer.dart';
import 'router/routes.dart';
import 'theme/theme.dart';

void main() {
  
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BestScore()),
        ChangeNotifierProvider(create: (_) => RoundScore()),
        ChangeNotifierProvider(create: (_) => FunctionalTimer()),
        ChangeNotifierProvider(create: (_) => Task()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        routes: routes
      ),
    ),
  );
}