

import 'package:flutter/material.dart';
import 'package:flutter_calculator/values/values.dart';
import 'package:flutter_calculator/widgets/button_text.dart';
import 'package:flutter_calculator/widgets/button_widget.dart';

class OperationKeysListView extends StatelessWidget {
  const OperationKeysListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: desplayWidth * .24,
      height: desplayHeight * .5,
      child: ListView.separated(
        itemBuilder: (context, index) => ButtonWidget(
          buttonFunctinality: Functionality.operationsKeys,
          indxx: index,
          buttonWidth: double.infinity,
          buttonHeight: desplayHeight * .16,
        ),
        separatorBuilder: (context, index) => Container(
          width: 2,
          height: 2,
        ),
        itemCount: 3,
      ),
    );
  }
}
