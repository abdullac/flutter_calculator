import 'package:flutter/material.dart';
import 'package:flutter_calculator/functions/key_pressed.dart';
import 'package:flutter_calculator/values/values.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DesplayArea extends StatelessWidget {
  // final String dseplayVal;
   DesplayArea({
    super.key,
    // required this.dseplayVal,
  });

  //           ---for stateless widget rebuild---
  //       ValueNotifier     ---->>  key_pressed.dart
  //       ValueListnerebleBuilder   -->  Text Widget

  @override
  Widget build(BuildContext context) {
    getSavedData().then((String result) {
      print("result from saved data $result");
      desplayValueNotifier.value = result;
    });
    //getSavedData();
    return Container(
      decoration: BoxDecoration(color: Colors.grey[400]),
      height: desplayHeight * .2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Align(
              alignment: Alignment.bottomRight,
              // Value listnerable builder
              child: ValueListenableBuilder(
                valueListenable: desplayValueNotifier,
                builder: (BuildContext ctx, String newValue, Widget? _) {
                  return Text(
                    //screenValue,
                    newValue,
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: desplayFontSize(newValue),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  double desplayFontSize(newValue) {
    if (//screenValue
    newValue.length <= 2) {
      return (desplayHeight * .15);
    } else if (//screenValue
    newValue.length <= 4) {
      return (desplayHeight * .12);
    } else if (//screenValue
    newValue.length <= 6) {
      return (desplayHeight * .09);
    } else if (//screenValue
    newValue.length <= 8) {
      return (desplayHeight * .07);
    } else if (//screenValue
    newValue.length <= 12) {
      return (desplayHeight * .05);
    } else {
      return (desplayHeight * .04);
    }
  }


Future<String> getSavedData() async {
    final shredPref = await SharedPreferences.getInstance();
    final savedData = shredPref.getString("saved_value");
    if(savedData != null){
      print("retrived_data $savedData");
      return savedData;
    }else{
      print("retrived_data is null $savedData");
      return "0";
    }
  }

}
