import 'package:flutter/material.dart';
import 'package:flutter_calculator/values/values.dart';

///  ListView
Container listViewSeperator(functionality) {
  return Container(
    padding: functionality != Functionality.operationsKeys
        ? const EdgeInsets.only(
            right: 2,
            left: 2,
          )
        : const EdgeInsets.only(
            top: 2,
            bottom: 2,
          ),
  );
}

Axis scrollDiretion(functionality) {
  return functionality != Functionality.operationsKeys
      ? Axis.horizontal
      : Axis.vertical;
}

///  GridView
var sliverGridDelegateWithFixedCrossAxisCount =
    SliverGridDelegateWithFixedCrossAxisCount(
  childAspectRatio: ((desplayWidth * .74) / (desplayHeight * .44)),
  crossAxisCount: 3,
  mainAxisSpacing: 5,
  crossAxisSpacing: 5,
);
