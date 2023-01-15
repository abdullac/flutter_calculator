import 'package:flutter_calculator/functions/number_key_pressed.dart';

double desplayHeight = 200;
double desplayWidth = 200;

// double buttonHeight = 200;
// double buttonWidth = 200;

// double numberButtonAspectRatio = ((desplayWidth * .75) / (desplayHeight * .5));

double buttonTextSize = (desplayHeight * .7) >= (desplayWidth * .75)
    ? (desplayHeight * .7)/3
    : (desplayWidth * .75)/3;

   