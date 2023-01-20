import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: OuterContainer(),
      ),
    ),
  ));
}

class OuterContainer extends StatefulWidget {
  // const OuterContainer({super.key});

  @override
  State<OuterContainer> createState() => _OuterContainerState();
}

class _OuterContainerState extends State<OuterContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 219, 209, 209),
        // borderRadius: BorderRadius.circular(20)
      ),
      child: InnerLayout(),
    );
  }
}

class InnerLayout extends StatelessWidget {
  // const InnerLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
        padding: EdgeInsets.only(left: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "Sarita \nBlood \nBank",
                style: TextStyle(fontSize: 35,color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 190, 190, 190),
                  borderRadius: BorderRadius.circular(5)),
              child: Icon(
                Icons.circle,
                color: Colors.green,
                size: 20,
              ),
            )
          ],
        ),
        margin: EdgeInsets.all(20),
        // height: double.infinity,
        height: 200,
        width: MediaQuery.of(context).size.width / 2.2,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20)),
      ),
      Container(
        margin: EdgeInsets.only(top: 40, left: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Text(
                "Blood Group",
                style: TextStyle(color: Colors.red, fontSize: 15),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text("B +ve", style: TextStyle(fontSize: 20)),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text("Add Units"),
            ),
            Container(
              child: MyCounter(),
            )
          ],
        ),
      )
    ]);
  }
}

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => MyCounterState();
}

class MyCounterState extends State<MyCounter> {
  int counter = 0;
  MyCounterState(){
    this.counter=counter;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(4),
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 145, 144, 144)
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            if(counter>0)SizedBox(
              height: 30,
              width: 30,
              child: ElevatedButton(onPressed: sub, child: Center(child: Text("-")),style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 185, 182, 182)),),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Text(counter.toString()),
            ),
            if(counter<10)SizedBox(
               height: 30,
              width: 30,
              child: ElevatedButton(onPressed: add, child: Text("+"),style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 185, 182, 182)),),
            ),
            
          ]),
        ),
        if(counter==10)Container(
          margin: EdgeInsets.only(top: 20),
          child: Text("You have reached maximum unit limit",style: TextStyle(fontSize: 10),),
          decoration: BoxDecoration(
            color: Colors.red
          ),
          )
      ],
    );
  }

  void sub() {
    setState(() {
      counter--;
    });
  }

  void add() {
    setState(() {
      counter++;
    });
  }
}


