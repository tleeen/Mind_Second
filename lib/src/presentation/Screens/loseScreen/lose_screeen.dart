import 'package:flutter/material.dart';

class LoseScreen extends StatefulWidget{
  const LoseScreen({super.key});

  @override
  State<LoseScreen> createState() => _LoseScreenState();
}

class _LoseScreenState extends State<LoseScreen> {
  int? scope;

  @override
  void didChangeDependencies(){
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is int, "Wrong argument type");


    scope = args as int?;
    setState((){});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Mind&Second'
            ),
          ),
        body: Center(
          child: Column(
            textDirection: TextDirection.ltr,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Align(
                alignment: Alignment.bottomCenter,
                child: Text("Упс!",
                style: TextStyle(
                fontSize: 34),
                textAlign: TextAlign.center
                )
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text("Твой счёт: $scope",
                style: const TextStyle(
                fontSize: 28),
                textAlign: TextAlign.center
                )
              ),
              Row(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 88,
                    height: 88,
                    child: 
                      ElevatedButton(
                      onPressed: () {Navigator.of(context).pushNamed('/game');},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: const Icon(Icons.restart_alt_rounded),
                      ),
                  ),
                  SizedBox(
                    width: 88,
                    height: 88,
                    child:
                      ElevatedButton(
                      onPressed: () {Navigator.of(context).pushNamed('/');},
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: const Icon(Icons.home),
                      ),
                  )
                ],
              )
            ]
          )
        )
      );
  }
}