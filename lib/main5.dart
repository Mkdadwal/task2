import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        body: SafeArea(
            child: Column(children: [
      MyCustomWidget(myColor: Colors.blueAccent, myHeight: 100),
      MyCustomWidget(myColor: Colors.green, myHeight: 200)
    ]))),
  ));
}


class MyCustomWidget extends StatelessWidget {
  final Color myColor;
  final double myHeight;
  const MyCustomWidget(
      {super.key, required this.myColor, required this.myHeight});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: myHeight,
          color: myColor,
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}











// void main() {
//   //Map-> Key value pair

//   // Map<int, String> myStringMap = Map();

//   // myStringMap[1] = "abc";

//   Map myStringMap = {1: "abc"};

//   myStringMap.addAll({2: "def", 3: "ghi"});

//   myStringMap[1] = "hsgjh";
//   print(myStringMap[1]);
// }

// void main(List<String> args) {
//   Map<String, Map<int, String>> myStringMap = {
//     "1": {1: "shreyash"}
//   };
//   print(myStringMap["1"[1]]);
// }

