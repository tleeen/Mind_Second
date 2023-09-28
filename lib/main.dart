import 'package:flutter/material.dart';

import 'src/infrastructure/injector/injector.dart';
import 'src/presentation/mind_second_app.dart';

void main() {
  
  registrationDependencies();
  runApp(const MindSecondApp());
}