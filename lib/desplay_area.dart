import 'package:flutter/material.dart';
import 'package:flutter_calculator/values/values.dart';

class DesplayArea extends StatefulWidget {
  @override
  DesplayAreaState createState() => DesplayAreaState();
}

class DesplayAreaState extends State<DesplayArea> {

  String initValue = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[400]),
      height: desplayHeight * .2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                // desplayValue
                initValue,
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: (desplayHeight *.17)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
