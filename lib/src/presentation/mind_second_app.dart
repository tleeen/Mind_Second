import 'package:flutter/material.dart';
import 'package:flutter_application/src/presentation/router/routes.dart';
import 'package:flutter_application/src/presentation/theme/theme.dart';


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