import 'package:flutter/material.dart';


ValueNotifier<String> desplayValueNotifier = ValueNotifier(/*screenValue*/ "0");

double oldNumber = 0;
double newNumber = 0;

bool isOperatorClicked = false;
bool isResultclicked = false;
bool isPercentageClicked = false;
String lastClickedOperator = "nill";

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
List operationKeyCategory = ["+", "-", "x", "/", "%", "="];
List otherKeyCategory = [".", "C", "<x"];

String keyPressed(String getKeyText, String desplayValue) {
  String resultValue = desplayValue;
  if (numberKeyCategory.contains(getKeyText)) {
    resultValue = assignToDesplayValue(getKeyText, desplayValue);
  } else if (operationKeyCategory.contains(getKeyText)) {
    resultValue = operationKeyPressed(getKeyText, desplayValue);
  } else if (otherKeyCategory.contains(getKeyText)) {
    resultValue = otherKeyPressed(getKeyText, desplayValue);
  }
  print(resultValue);
  return resultValue;
}

String assignToDesplayValue(String keyText, String desplayValue) {
  String resultValue = desplayValue;
  if (isResultclicked == true || isPercentageClicked == true) {
    resultValue = "0";
    oldNumber = 0;
    newNumber = 0;
    lastClickedOperator = "nill";
    isResultclicked = false;
    isPercentageClicked = false;
  } else {
    //
  }
  double desplayNumber = double.parse(resultValue);
  double keyNumber = double.parse(keyText);
  resultValue == "0"
      ? (keyNumber == 0 ? resultValue = "0" : resultValue = keyText)
      : (resultValue.length <= 13
          ? resultValue = resultValue + keyText
          : resultValue = "${desplayNumber + 0}");
  return resultValue;
}

String findResult(String desplayValue) {
  String resultValue = desplayValue;
  if (lastClickedOperator == "+") {
    oldNumber = oldNumber + newNumber;
  } else if (lastClickedOperator == "-") {
    oldNumber = oldNumber - newNumber;
  } else if (lastClickedOperator == "x") {
    oldNumber = oldNumber * newNumber;
  } else if (lastClickedOperator == "/") {
    oldNumber = oldNumber / newNumber;
  }
  resultValue = oldNumber.toString();
  return resultValue;
}

String findPercentage(String desplayValue) {
  String resultValue = desplayValue;
  if (isOperatorClicked == true) {
    if (lastClickedOperator == "+") {
      oldNumber = ((oldNumber - newNumber) * 100) / oldNumber;
    } else if (lastClickedOperator == "-") {
      oldNumber = (newNumber * 100) / oldNumber;
    } else if (lastClickedOperator == "*") {
      oldNumber = (oldNumber * newNumber) / 100;
    } else if (lastClickedOperator == "/") {
      oldNumber = (oldNumber * 100) / newNumber;
    }
  } else {
    oldNumber = newNumber / 100;
  }
  resultValue = oldNumber.toString();
  return resultValue;
}

String calculation(String keyText, String desplayValue) {
  String resultValue = desplayValue;
  newNumber = double.parse(resultValue);
  if (isResultclicked == true) {
    resultValue = findResult(desplayValue);
  } else if (isPercentageClicked == true) {
    resultValue = findPercentage(desplayValue);
  }
  resultValue = oldNumber.toString();
  resultValue.endsWith(".0")
      ? resultValue = resultValue.replaceRange(
          resultValue.length - 2, resultValue.length, "")
      : resultValue = oldNumber.toString();
  return resultValue;
}

// operationKeyPressed method
String operationKeyPressed(String keyText, String desplayValue) {
  String resultValue = desplayValue;
  if (!keyText.contains("=")) {
    if (keyText.contains("%")) {
      // % % %
      if (isPercentageClicked == false) {
        bool nowIsResultCliked = isResultclicked;
        isResultclicked = false;
        isPercentageClicked = true;
        resultValue = calculation(keyText, desplayValue);
        isResultclicked = nowIsResultCliked;
      } else {
        //
      }
    } else {
      if (keyText.contains("+")) {
        lastClickedOperator = "+";
      } else if (keyText.contains("-")) {
        lastClickedOperator = "-";
      } else if (keyText.contains("x")) {
        lastClickedOperator = "*";
      } else if (keyText.contains("/")) {
        lastClickedOperator = "/";
      }
      if (isOperatorClicked == true) {
        if (lastClickedOperator == "=") {
          newNumber = double.parse(resultValue);
          isResultclicked = true;
          resultValue = calculation(keyText, desplayValue);
          resultValue = resultValue = "0";
          isOperatorClicked = true;
        } else {
          //
        }
      } else {
        oldNumber = double.parse(resultValue);
        isOperatorClicked = true;
        resultValue = "0";
        resultValue = resultValue;
      }
    }
  } else {
    if (isOperatorClicked == true) {
      isResultclicked = true;
      resultValue = calculation(keyText, desplayValue);
      isOperatorClicked = false;
      lastClickedOperator = "=";
    } else {
      //
    }
  }
  return resultValue;
}

// otherKeyPressed method
String otherKeyPressed(String keyText, String desplayValue) {
  String resultValue = desplayValue;
  double desplayNumber = double.parse(resultValue);
  if (keyText == "C") {
    resultValue = "0";
    resultValue = "0";
    oldNumber = 0;
    newNumber = 0;
    lastClickedOperator = "nill";
    isResultclicked = false;
    isPercentageClicked = false;
  } else if (keyText == "<x") {
    resultValue.length > 1
        ? resultValue = resultValue.replaceRange(
            resultValue.length - 1, resultValue.length, "")
        : resultValue = "0";
  } else if (keyText == ".") {
    if (desplayNumber == 0) {
      resultValue = "0.";
    } else {
      resultValue.contains(".")
          ? resultValue = resultValue
          : resultValue += ".";
    }
  }
  return resultValue;
}
