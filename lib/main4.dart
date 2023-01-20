import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        body: SafeArea(
            child: Container(
      // color: Colors.blue,
      child: Stack(
        fit: StackFit.loose,
        // alignment: AlignmentDirectional.center,
        children: [
          ...getMyWidgets(),
          // SizedBox(
          //   height: 30,
          // )
        ],
      ),
    ))),
  ));
}

List<Widget> getMyWidgets() {
  List<Color> myContainerColors = [
    Colors.teal,
    // Colors.black,
    Colors.red,
    // Colors.green,
    // Colors.pink,
    // Colors.indigo,
    // Colors.teal,
    // Colors.yellow,
  ];

  List<Widget> myResult = [];

  for (var i = 0; i < myContainerColors.length; i++) {
    myResult.add(Container(
      // color: myContainerColors[i].withAlpha(100),
      child: Padding(
        padding: EdgeInsets.all(8.0 * i),
        child: Positioned(
          width: (i==1)?10:100,
          height: (i==1)?10:100,
          child: Container(
            width: 100/(i+1),
            height: 100/(i+1),
            color: myContainerColors[i],
            child: Center(child: Text("${i + 1}")),
          ),
        ),
      ),
    ));
  }

  return myResult;
}
