import 'package:flutter/material.dart';
import 'package:flutter_calculator/buttons_area.dart';
import 'package:flutter_calculator/values/values.dart';

enum Functionality {
  functionKeys,
  countNumberKeys,
  additionalKeys,
  operationsKeys,
  none,
}

class ButtonText extends StatelessWidget {
  final Functionality functinality;
  final int indx;
  const ButtonText({
    super.key,
    required this.indx,
    required this.functinality,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      buttonText(indx),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white70,
        fontSize: (desplayHeight * .51) <= (desplayWidth * .75)
            ? (desplayHeight * .51) / 4
            : (desplayWidth * .75) / 4,
      ),
    );
  }

  String buttonText(index) {
    String textValue = "0";
    if (functinality == Functionality.countNumberKeys) {
      switch (index + 1) {
        case 1:
          textValue = "7";
          break;
        case 2:
          textValue = "8";
          break;
        case 3:
          textValue = "9";
          break;
        case 4:
          textValue = "4";
          break;
        case 5:
          textValue = "5";
          break;
        case 6:
          textValue = "6";
          break;
        case 7:
          textValue = "1";
          break;
        case 8:
          textValue = "2";
          break;
        case 9:
          textValue = "3";
          break;
      }
    } else if (functinality == Functionality.functionKeys) {
      switch (index + 1) {
        case 1:
          textValue = "C";
          break;
        case 2:
          textValue = "<x";
          break;
        case 3:
          textValue = "%";
          break;
        case 4:
          textValue = "/";
          break;
      }
    } else if(functinality  == Functionality.additionalKeys){
      switch (index + 1) {
        case 1:
          textValue = "00";
          break;
        case 2:
          textValue = "0";
          break;
        case 3:
          textValue = ".";
          break;
        case 4:
          textValue = "=";
          break;
      }
    }else if(functinality == Functionality.operationsKeys){
      switch (index + 1) {
        case 1:
          textValue = "x";
          break;
        case 2:
          textValue = "-";
          break;
        case 3:
          textValue = "+";
          break;
      }
    }

    return textValue;
  }
}
