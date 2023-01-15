import 'package:flutter/material.dart';
import 'package:flutter_calculator/values/values.dart';
import 'package:flutter_calculator/widgets/button_text.dart';
import 'package:flutter_calculator/widgets/button_widget.dart';

class FunctionKeysListView extends StatelessWidget {
  final String subFunctionality;
  const FunctionKeysListView({
    super.key,
    required this.subFunctionality,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (desplayHeight * .115),
      width: (desplayWidth * 1),
      padding: EdgeInsets.all(4),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, functionButtonIndex) => ButtonWidget(
                indxx: functionButtonIndex,
                buttonHeight: double.infinity,
                buttonWidth: (desplayWidth * .236),
                buttonFunctinality: Functionality.functionKeys,
                subFunctionality: subFunctionality,
              ),
          separatorBuilder: (context, index) => Container(
                padding: EdgeInsets.only(right: 2, left: 2),
              ),
          itemCount: 4),
    );
  }
}
