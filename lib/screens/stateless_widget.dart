import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        MyCustomApp(),
      ]),
    ))),
  ));
}

class MyCustomApp extends StatelessWidget {
  const MyCustomApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(6),
          child: Text("Login with your mobile"),
        ),
        Stack(
          clipBehavior: Clip.none,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.only(left: 4, top: 4, right: 30, bottom: 4),
                child: Center(child: Text("9425677707")),
                width: 150,
                height: 32,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.green))),
            Positioned(
              right: -20,
              child: Container(
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.green)),
                child: Icon(
                  Icons.done,
                  size: 30,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
