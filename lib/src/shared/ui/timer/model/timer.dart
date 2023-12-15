import 'dart:async';

import 'package:flutter/material.dart';

class FunctionalTimer extends ChangeNotifier{

  late double time;
  late double _waitTime;
  double percent = 1.0;
  String timeStr = '';

  late Timer _timer;
  late Function _callback;

  void setTime(double value){
        timeStr = "$value";
        time = value;
        _waitTime = value;
        notifyListeners();
  }

  void setWaitTime(double value){
        _waitTime = value;
        notifyListeners();
  }

  void setPercent(double value){
        percent = value;
        notifyListeners();
  }

  void setTimeStr(String value){
        timeStr = value;
        notifyListeners();
  }

  void setCallback(Function action){
        _callback = action;
        notifyListeners();
  }
  
  void _calculationTime() {
      setPercent(_waitTime / 10);
      setTimeStr((_waitTime % 60).toStringAsFixed(1));
      notifyListeners();
    }

    void restart() {
      setWaitTime(time);
      _calculationTime();
      notifyListeners();
    }

    void pause() {
      _timer.cancel();
        setPercent(1.0);
        setTimeStr("$time");
        setWaitTime(time);
      notifyListeners();
    }
    
    void start(){
        _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
          setWaitTime(_waitTime - 0.1);
          _calculationTime();
          if (_waitTime <= 0) {
            setTimeStr("0.0");
            _callback();
            pause();
          }
        });
        notifyListeners();
    }
}