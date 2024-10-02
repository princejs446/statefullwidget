import 'dart:math';
import 'package:flutter/material.dart';
class ColorChangeScreen extends StatefulWidget{
  @override
  _ColorChangeScreenState createState()=>_ColorChangeScreenState();
}
class _ColorChangeScreenState extends State<ColorChangeScreen>{
  Color _backgroundColor=Colors.white;

  void _changeColor(){
    setState(() {
      _backgroundColor=Color(Random().nextInt(0xffffffff));
    });
  }
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: _changeColor,
    child: Scaffold(
      backgroundColor: _backgroundColor,
      body: Center(
        child: Text(
          'Tap to change color',
        style: TextStyle(fontSize: 24),
        ),
      ),
    ),
    );
  }
}