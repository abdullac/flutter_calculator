import 'package:flutter/material.dart';
import 'package:flutter_calculator/functions/key_pressed.dart';
import 'package:flutter_calculator/values/values.dart';

class DesplayArea extends StatelessWidget {
  final String dseplayVal;
  const DesplayArea({
    super.key, required this.dseplayVal,
  });

// @override
//   void setState(VoidCallback fn) {
//     // TODO: implement setState
//     super.setState(fn);
//     screenValue;
//     print("desplay area state");
//   }

  @override
  Widget build(BuildContext context) {
    print("desplay area");
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
                //screenValue,
                dseplayVal,
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: desplayFontSize(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  double desplayFontSize() {
    if (screenValue.length <= 2) {
      return (desplayHeight * .15);
    } else if (screenValue.length <= 4) {
      return (desplayHeight * .12);
    } else if (screenValue.length <= 6) {
      return (desplayHeight * .09);
    } else if (screenValue.length <= 8) {
      return (desplayHeight * .07);
    } else if (screenValue.length <= 12) {
      return (desplayHeight * .05);
    } else {
      return (desplayHeight * .04);
    }
  }
}
