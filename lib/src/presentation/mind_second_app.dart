import 'package:flutter/material.dart';

import 'router/routes.dart';
import 'theme/theme.dart';


class MindSecondApp extends StatelessWidget {
  const MindSecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      routes: routes
    );
  }
}