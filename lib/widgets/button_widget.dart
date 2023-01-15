import 'package:flutter/material.dart';
import 'package:flutter_calculator/functions/get_or_set_value.dart';
import 'package:flutter_calculator/widgets/button_text.dart';

class ButtonWidget extends StatelessWidget {
  final Functionality buttonFunctinality;
  final String subFunctionality;
  final int indxx;
  final double buttonWidth;
  final double buttonHeight;
  const ButtonWidget({
    super.key,
    required this.buttonFunctinality,
    required this.indxx,
    required this.buttonWidth,
    required this.buttonHeight,
    this.subFunctionality = "normal",
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: () {
          // button pressed
          /*String getButtonValue =*/ buttonText(indxx, setFunctionality(), TextValuePorpose.keyPressed);

        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.grey[800]),
        ),
        child: ButtonText(
          indx: indxx,
          functinality: setFunctionality(),
        ),
      ),
    );
  }

  Functionality setFunctionality() {
    if (subFunctionality == "normal") {
      return buttonFunctinality;
    } else if (subFunctionality == "functionsKey") {
      return Functionality.functionKeys;
    } else if (subFunctionality == "additionalsKey") {
      return Functionality.additionalKeys;
    }
    return Functionality.none;
  }
}
