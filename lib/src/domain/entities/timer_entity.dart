class Timer{
  DateTime? time1;
  DateTime? time2;
  
  void init(){
    time1 = DateTime.now();
  }

  int? getValue(){
    time2 = DateTime.now();
    return time2?.difference(time1!).inSeconds;
  }
}