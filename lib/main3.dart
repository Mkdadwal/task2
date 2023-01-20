import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        body: SafeArea(
            child: Container(
      // color: Colors.blue,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...getMyWidgets(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    ))),
  ));
}

List<Widget> getMyWidgets() {
  List<Color> myContainerColors = [
    Colors.teal,
    // Colors.black,
    // Colors.red,
    // Colors.green,
    // Colors.pink,
    // Colors.indigo,
    // Colors.teal,
    // Colors.yellow,
  ];

  List<Widget> myResult = [];

  for (var i = 0; i < myContainerColors.length; i++) {
    myResult.add(InkWell(
      onTap: onTapContainer(),
      child: Container(
        width: 100,
        height: 100,
        color: myContainerColors[i],
        child: Center(child: Text("${i + 1}")),
      ),
    ));
  }

  return myResult;
}

onTapContainer() {
  print("Clicked");
}
