import 'package:flutter/material.dart';
import 'package:flutter_calculator/values/values.dart';
import 'package:flutter_calculator/widgets/button_text.dart';
import 'package:flutter_calculator/widgets/button_widget.dart';

class NumberGridView extends StatelessWidget {
  const NumberGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      height: (desplayHeight * .51),
      width: (desplayWidth * .75),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: ((desplayWidth * .74) / (desplayHeight * .5)),
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (context, index) => Align(
          alignment: Alignment.center,
          child: ButtonWidget(
            indxx: index,
            buttonHeight: double.infinity,
            buttonWidth: double.infinity,
            buttonFunctinality: Functionality.countNumberKeys,
          ),
        ),
        itemCount: 9,
        padding: const EdgeInsets.all(5),
      ),
    );
  }
}
