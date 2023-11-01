import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  final IconData icon;
  final Function action;
  const Button({super.key, required this.icon, required this.action});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 88,
      height: 88,
      child: ElevatedButton(
        onPressed: () {
          action();
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
        ),
        child: Icon(icon),
      ),
    );
  }
}