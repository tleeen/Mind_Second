import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../domain/functionalСlasses/task/implementation/task.dart';

class TaskWidget extends StatefulWidget{

  final String answer;
  final String task;
  

  const TaskWidget({super.key, required this.answer, required this.task});

  @override
    // ignore: no_logic_in_create_state
    State<TaskWidget> createState() => _TaskWidgetState(answer, task);
} 

class _TaskWidgetState extends State<TaskWidget>{

  _TaskWidgetState(this._taskAnswer, this._textTask);

  final fieldText = TextEditingController();

  Timer? _timer;
  double _waitTime = 10;
  double _percent = 1.0;
  bool isStart = true;
  String timeStr = '10.00';
  int score = 0;

  String _taskAnswer;
  String _textTask;

   @override
  void initState() {
    super.initState();
    _calculationTime();
    start();
  }

  void start() {
    if (_waitTime > 0) {
      setState(() {
        isStart = true;
      });
      _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
        _waitTime -= 0.1;
        _calculationTime();
        if (_waitTime <= 0) {
          timeStr = "0.00";
          Navigator.of(context).pushNamed('/lose',
          arguments: score);
          pause();
        }
      });
    }
  }

  void restart() {
    _waitTime = 10;
    _calculationTime();
  }

   void pause() {
    _timer?.cancel();
    setState(() {
      isStart = false;
    });
  }

  void _calculationTime() {
    String secondStr = (_waitTime % 60).toStringAsFixed(1);
    setState(() {
      _percent = _waitTime / 10;
      timeStr = secondStr;
    });
  }

  void _checkAnswer(String answer) {
    fieldText.clear();
    setState((){
      Task task = Task();
      if (answer == _taskAnswer){
        _taskAnswer = task.getAnswerForTask();
        _textTask = task.createTask();
        ++score;
        restart();
      }
      else{
        Navigator.of(context).pushNamed('/lose',
          arguments: score);
        pause();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Align(
          alignment: Alignment.bottomCenter,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(
                  value: _percent,
                  backgroundColor: Colors.white,
                  strokeWidth: 5,
                ),
              ),
              Positioned(
                child: Text(
                  timeStr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                )
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter, 
          child: Text(
            _textTask
        ,
            style: const TextStyle(
              fontSize: 34
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter, 
          child: SizedBox(
            width: 250,
            child: TextField(
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
              onSubmitted: _checkAnswer
            ),
          )
        )
      ],
    );
  }
}