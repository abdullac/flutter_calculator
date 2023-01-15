
import 'package:flutter/material.dart';
import 'package:flutter_calculator/buttons_area.dart';
import 'package:flutter_calculator/desplay_area.dart';
import 'package:flutter_calculator/values/values.dart';

class MainScreen extends StatefulWidget {
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    desplayHeight = MediaQuery.of(context).size.height;
    desplayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black87,
          child: Column(
            children: [
              DesplayArea(),
              ButtonsArea(),
            ],
          ),
        ),
      ),
    );
  }
}
