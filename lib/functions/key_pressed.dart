String desplayValue = "0";

String screenValue = "0";

double oldNumber = 0;
double newNumber = 0;

bool isOperatorClicked = false;
bool isResultclicked = false;
bool isPercentageClicked = false;
String lastClickedOperator = "nill";

keyPressed(String getKeyText) {
  if (numberKeyCategory.contains(getKeyText)) {
    assignToDesplayValue(getKeyText);
  } else if (operationKeyCategory.contains(getKeyText)) {
    operationKeyPressed(getKeyText);
  } else if (otherKeyCategory.contains(getKeyText)) {
    otherKeyPressed(getKeyText);
  }
  print(desplayValue);
  screenValue = desplayValue;
}

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

String assignToDesplayValue(String keyText) {
  if (isResultclicked == true || isPercentageClicked) {
    desplayValue = "0";
    oldNumber = 0;
    newNumber = 0;
    lastClickedOperator = "nill";
    isResultclicked = false;
    isPercentageClicked = false;
  } else {
    //
  }
  String value = "0";
  double desplayNumber = double.parse(desplayValue);
  double keyNumber = double.parse(keyText);
  desplayValue == "0"
      ? (keyNumber == 0 ? value = "0" : value = keyText)
      : (desplayValue.length <= 13
          ? value = desplayValue + keyText
          : value = "${desplayNumber + 0}");
  desplayValue = value;
  return desplayValue;
}

findResult() {
  if (lastClickedOperator == "+") {
    oldNumber = oldNumber + newNumber;
  } else if (lastClickedOperator == "-") {
    oldNumber = oldNumber - newNumber;
  } else if (lastClickedOperator == "x") {
    oldNumber = oldNumber * newNumber;
  } else if (lastClickedOperator == "/") {
    oldNumber = oldNumber / newNumber;
  }
}

findPercentage() {
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
}

calculation(String keyText) {
  newNumber = double.parse(desplayValue);
  if (isResultclicked == true) {
    findResult();
  } else if (isPercentageClicked == true) {
    findPercentage();
  }
  desplayValue = oldNumber.toString();
  desplayValue.endsWith(".0")
      ? desplayValue = desplayValue.replaceRange(
          desplayValue.length - 2, desplayValue.length, "")
      : desplayValue = oldNumber.toString();
}

// operationKeyPressed method
operationKeyPressed(String keyText) {
  if (!keyText.contains("=")) {
    if (keyText.contains("%")) {
      // % % %
      if (isPercentageClicked == false) {
        bool nowIsResultCliked = isResultclicked;
        isResultclicked = false;
        isPercentageClicked = true;
        calculation(keyText);
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
          newNumber = double.parse(desplayValue);
          isResultclicked = true;
          calculation(keyText);
          desplayValue = "0";
          isOperatorClicked = true;
        } else {
          //
        }
      } else {
        oldNumber = double.parse(desplayValue);
        isOperatorClicked = true;
        desplayValue = "0";
      }
    }
  } else {
    if (isOperatorClicked == true) {
      isResultclicked = true;
      calculation(keyText);
      isOperatorClicked = false;
      lastClickedOperator = "=";
    } else {
      //
    }
  }
}

// otherKeyPressed method
otherKeyPressed(String keyText) {
  double desplayNumber = double.parse(desplayValue);
  if (keyText == "C") {
    desplayValue = "0";
    desplayValue = "0";
    oldNumber = 0;
    newNumber = 0;
    lastClickedOperator = "nill";
    isResultclicked = false;
    isPercentageClicked = false;
  } else if (keyText == "<x") {
    desplayValue.length > 1
        ? desplayValue = desplayValue.replaceRange(
            desplayValue.length - 1, desplayValue.length, "")
        : desplayValue = "0";
  } else if (keyText == ".") {
    if (desplayNumber == 0) {
      desplayValue = "0.";
    } else {
      desplayValue.contains(".")
          ? desplayValue = desplayValue
          : desplayValue += ".";
    }
  }
}
