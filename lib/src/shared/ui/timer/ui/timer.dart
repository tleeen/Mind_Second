import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/timer.dart';

class TimerWidget extends StatelessWidget{
  
  const TimerWidget({ super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
          alignment: Alignment.bottomCenter,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(
                  value: context.watch<FunctionalTimer>().percent,
                  backgroundColor: Colors.white,
                  strokeWidth: 5,
                ),
              ),
              Positioned(
                child: Text(
                  context.read<FunctionalTimer>().timeStr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                    textAlign: TextAlign.center,
                  )
                )
              ],
            ),
          );
    }
}