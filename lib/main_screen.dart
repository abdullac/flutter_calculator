
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
    return Scaffold(
      body: SafeArea(
        child: Container(
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
