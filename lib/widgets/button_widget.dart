import 'package:flutter/material.dart';
import 'package:flutter_calculator/values/values.dart';

var buttonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.grey[800]),
  padding: MaterialStateProperty.all(EdgeInsets.zero),
  //tapTargetSize: MaterialTapTargetSize.shrinkWrap
);

var textStyle = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.white70,
  fontSize: (desplayHeight * .51) <= (desplayWidth * .75)
      ? (desplayHeight * .51) / 4.8
      : (desplayWidth * .75) / 4.8,
);

SizedBox sizedBoxMethod(ElevatedButton elevatedButton) {
  return SizedBox(
    width: (desplayWidth * .229),
    height: (desplayHeight * .137),
    child: elevatedButton,
  );
}
