//final String getKeyText = "nill";

// ignore_for_file: avoid_print

import 'dart:ffi';

import 'package:flutter_calculator/desplay_area.dart';

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
    print(getKeyText);
  }
}

String assignToDesplayValue(getKeyText) {
  String value = "000";
  int desplayNumber = int.parse(desplayValue);
  int keyNumber = int.parse(getKeyText);
  if (desplayNumber == 0) {
    if (keyNumber == 0) {
      value = "0";
    } else {
      value = getKeyText;
    }
  } else {
    value = desplayValue + getKeyText;
  }
  desplayValue = value;
  print(value);
  return value;
}


