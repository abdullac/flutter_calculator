import 'package:flutter/material.dart';
import 'package:flutter_calculator/buttons_area.dart';
import 'package:flutter_calculator/functions/get_or_set_value.dart';
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
      buttonText(indx, functinality, TextValuePorpose.keyLabel),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white70,
        fontSize: (desplayHeight * .51) <= (desplayWidth * .75)
            ? (desplayHeight * .51) / 4
            : (desplayWidth * .75) / 4,
      ),
    );
  }
  
}
