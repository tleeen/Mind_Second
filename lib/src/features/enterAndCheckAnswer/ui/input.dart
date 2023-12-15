import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/analysis_answer.dart';

class Input extends StatelessWidget{
  final TextEditingController fieldText;
  
  const Input({super.key, required this.fieldText});
  
  @override
  Widget build(BuildContext context) {

    return Align(
          alignment: Alignment.bottomCenter, 
          child: SizedBox(
            width: 250,
            child: TextField(
              textInputAction: TextInputAction.none,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Введи ответ'
              ),
              style: const TextStyle(
                fontSize: 22
              ),
              controller: fieldText,
              keyboardType: TextInputType.number,
              onSubmitted: (answer) => {analysisAnswer(answer, context), fieldText.clear()}
            ),
          )
        );
  }
  }