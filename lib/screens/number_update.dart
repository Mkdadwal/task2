import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: MyCounterStatefulWidget(),
      ),
    ),
  ));
}

class MyCounterStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCounterWidgetState();
  }
}

class MyCounterWidgetState extends State<MyCounterStatefulWidget> {
  int myNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Text("Number"),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(myNumber.toString()),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ElevatedButton(onPressed: onPressedMinus, child: Text("-")),
            SizedBox(width: 20),
            ElevatedButton(onPressed: onPressedPlus, child: Text("+")),
          ]),
        )
      ],
    );
  }

  void onPressedMinus() {
    setState(() {
      myNumber = myNumber - 1;
    });
  }

  void onPressedPlus() {
    setState(() {
      myNumber = myNumber + 1;
    });
  }
}
