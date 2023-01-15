//final String getKeyText = "nill";

// ignore_for_file: avoid_print

import 'dart:ffi';

import 'package:flutter_calculator/desplay_area.dart';
import 'package:flutter_calculator/values/values.dart';

List numberKeyCategory = [
  "0",
  "00",
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9"
];
List operationKeyCategory = ["+", "-", "X", "/", "%", "="];
List otherKeyCategory = [".", "C", "<x"];

// move this 2 lines to inside of numbeKeyPressed(){} function
DesplayAreaState desplayArea = DesplayAreaState();
String desplayValue = desplayArea.initValue;

numberKeyPressed(getKeyText /*, Functionality functinality*/) {
  if (numberKeyCategory.contains(getKeyText)) {
    assignToDesplayValue(getKeyText);
  } else if (operationKeyCategory.contains(getKeyText)) {
    print(getKeyText);
  }
  if (otherKeyCategory.contains(getKeyText)) {
    otherKeyPressed(getKeyText);
  }
  print(desplayValue);
}

String assignToDesplayValue(keyText) {
  String value = "000";
  double desplayNumber = double.parse(desplayValue);
  double keyNumber = double.parse(keyText);
  if (desplayNumber == 0) {
    if (keyNumber == 0) {
      value = "0";
    } else {
      value = keyText;
    }
  } else {
    value = desplayValue + keyText;
  }
  desplayValue = value;
  return desplayValue;
}

otherKeyPressed(keyText) {
  double desplayNumber = double.parse(desplayValue);
  if (keyText == "C") {
    desplayValue = "0";
  } else if (keyText == "<x" && desplayValue.isNotEmpty) {
    String afterRemove = desplayValue.replaceRange(
        desplayValue.length - 1, desplayValue.length, "");
    desplayValue = afterRemove;
  } else if (keyText == ".") {
    if (desplayNumber == 0) {
      desplayValue = "0.0";
    } else {
      desplayValue.contains(".")
          ? desplayValue = desplayValue
          : desplayValue += ".0";
    }
  }
}
