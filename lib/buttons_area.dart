

import 'package:flutter/material.dart';
import 'package:flutter_calculator/values/values.dart';

class ButtonsArea extends StatefulWidget{
  
  @override
  ButtonsAreaState createState() => ButtonsAreaState();

}

class ButtonsAreaState extends State<ButtonsArea> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue[100]),
      height: (desplayHeight * .8),
      width: double.infinity,
      child: Column(
        children: const [
          
        ],
      ),
    );
  }
}