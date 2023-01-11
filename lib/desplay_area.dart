import 'package:flutter/material.dart';

class DesplayArea extends StatefulWidget {
  @override
  DesplayAreaState createState() => DesplayAreaState();
}

class DesplayAreaState extends State<DesplayArea> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(color: Colors.grey[400]),
      height: height / 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '9',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: (height / 6)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
