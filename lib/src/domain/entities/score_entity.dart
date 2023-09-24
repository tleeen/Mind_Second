class Scope{
  int count = 0;

  void increase(){
    ++count;
  }

  int get(){
    return count;
  }

  void reset(){
    count = 0;
  }
}