import 'package:flutter_calculator/functions/key_pressed.dart';
import 'package:flutter_calculator/values/values.dart';

String buttonActionOrLabel(
    index, Functionality functinality, TextValuePorpose textValuePorpose,{String desplayValue="0"}) {
  String resultValue = desplayValue;
  if (textValuePorpose == TextValuePorpose.keyLabel) {
    resultValue = buttonValue(index, functinality);
  } else if (textValuePorpose == TextValuePorpose.keyAction) {
    resultValue = keyPressed(buttonValue(index, functinality, ),desplayValue);
  }else{
    //
  }
  return resultValue;
}

String buttonValue(index, Functionality functinality) {
  String textValue = "0.0002";
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
  } else if (functinality == Functionality.additionalKeys) {
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
  } else if (functinality == Functionality.operationsKeys) {
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
