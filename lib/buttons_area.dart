import 'package:flutter/material.dart';
import 'package:flutter_calculator/values/values.dart';
import 'package:flutter_calculator/widgets/button_text.dart';
import 'package:flutter_calculator/widgets/button_widget.dart';
import 'package:flutter_calculator/widgets/function_keys_listview.dart';
import 'package:flutter_calculator/widgets/number_gridview.dart';
import 'package:flutter_calculator/widgets/operation_keys_listView.dart';

class ButtonsArea extends StatefulWidget {
  @override
  ButtonsAreaState createState() => ButtonsAreaState();
}

class ButtonsAreaState extends State<ButtonsArea> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FunctionKeysListView(
          subFunctionality: 'functionsKey',
        ),
        Row(
          children: const [
            NumberGridView(),
            OperationKeysListView(),
          ],
        ),
        const FunctionKeysListView(
          subFunctionality: 'additionalsKey',
        ),
      ],
    );
  }
}
