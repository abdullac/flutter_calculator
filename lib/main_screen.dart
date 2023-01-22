import 'package:flutter/material.dart';
import 'package:flutter_calculator/desplay_area.dart';
import 'package:flutter_calculator/functions/get_or_set_value.dart';
import 'package:flutter_calculator/functions/key_pressed.dart';
import 'package:flutter_calculator/values/values.dart';
import 'package:flutter_calculator/widgets/button_widget.dart';
import 'package:flutter_calculator/widgets/list_and_grid_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    desplayHeight = MediaQuery.of(context).size.height;
    desplayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black87,
          child: Column(
            children: [
              //DesplayArea
              DesplayArea(
                dseplayVal: desplayValue,
              ),
              //ButtonsArea
              Column(children: [
                listViewArea(4, Functionality.functionKeys), // FunctionKeys
                Row(children: [
                  gridViewArea(), // NumberGridView
                  listViewArea(3, Functionality.operationsKeys) // OperationKeys
                ]),
                listViewArea(4, Functionality.additionalKeys), // AdditionalKeys
              ])
            ],
          ),
        ),
      ),
    );
  }

  Widget gridViewArea() {
    return SizedBox(
      height: (desplayHeight * .46),
      width: (desplayWidth * .75),
      child: GridView.builder(
        gridDelegate: sliverGridDelegateWithFixedCrossAxisCount,
        itemBuilder: (context, index) => Align(
          alignment: Alignment.center,
          child: buttons(
            index,
            Functionality.countNumberKeys,
          ),
        ),
        itemCount: 9,
        padding: const EdgeInsets.all(5),
      ),
    );
  }

  Container listViewArea(
    int itemCount,
    Functionality functionality,
  ) {
    return Container(
      height: functionality != Functionality.operationsKeys
          ? (desplayHeight * .148)
          : (desplayHeight * .463),
      width: functionality != Functionality.operationsKeys
          ? (desplayWidth * 1)
          : (desplayWidth * .24),
      padding: EdgeInsets.all(desplayHeight * .01),
      child: ListView.separated(
        scrollDirection: scrollDiretion(functionality),
        itemBuilder: (context, buttonIndex) => buttons(
          buttonIndex,
          functionality,
        ),
        separatorBuilder: (context, index) {
          return listViewSeperator(functionality);
        },
        itemCount: itemCount,
      ),
    );
  }

  SizedBox buttons(int buttonIndex, Functionality functionality) {
    var elevatedButton = ElevatedButton(
      onPressed: () {
        stateMethod();
        buttonText(buttonIndex, functionality, TextValuePorpose.keyPressed);
      },
      style: buttonStyle,
      child: Text(
        buttonText(buttonIndex, functionality, TextValuePorpose.keyLabel),
        style: textStyle,
      ),
    );

    return sizedBoxMethod(elevatedButton);
  }

  void stateMethod() {
    return setState(() {
      screenValue;
    });
  }
}
