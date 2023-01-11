
import 'package:flutter/material.dart';
import 'package:flutter_calculator/main_screen.dart';

void main(){
  runApp(MyCalculatorApp());
}

class MyCalculatorApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
