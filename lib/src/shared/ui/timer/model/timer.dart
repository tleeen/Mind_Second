import 'dart:async';

import 'package:flutter/material.dart';

class FunctionalTimer extends ChangeNotifier{

  double time = 10;
  double waitTime = 10;
  double percent = 1.0;
  bool isStart = true;
  String timeStr = "10:00";

  late Timer timer;
  late BuildContext context;
  late Function callback;

  void setWaitTime(double value){
        waitTime = value;
        notifyListeners();
  }

  void setPercent(double value){
        percent = value;
        notifyListeners();
  }

  void setIsStart(bool value){
        isStart = value;
        notifyListeners();
  }

  void setTimeStr(String value){
        timeStr = value;
        notifyListeners();
  }

  void setCallback(Function action){
        callback = action;
        notifyListeners();
  }
  
  void calculationTime() {
      setPercent(waitTime / 10);
      setTimeStr((waitTime % 60).toStringAsFixed(1));
      notifyListeners();
    }

    void restart() {
      setWaitTime(time);
      calculationTime();
      notifyListeners();
    }

    void pause() {
      timer.cancel();
      setIsStart(false);
      notifyListeners();
    }
    
    void start(){
        timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
          setWaitTime(waitTime - 0.1);
          calculationTime();
          if (waitTime <= 0) {
            setTimeStr("0.00");
            callback();
            pause();
          }
        });
        notifyListeners();
    }
}