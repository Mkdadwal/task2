
import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: SafeArea(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 60,
              color: Colors.red,
              child: Text("I am red"),
            ),
            Container(
              width: 60,
              color: Colors.blue,
              child: Text("I am blue"),
            ),
            Container(
              width: 60,
              color: Colors.greenAccent,
              child: Text("I am green"),
            )
          ]),
      ),
      
    ),
  )));
}










// width: MediaQuery.of(context).size.width/2,


// child: Container(
      //     // child: Image.asset("images/p1.webp"),
      //     width: 200,
      //     height: 200,
      //     decoration: BoxDecoration(
      //        image: DecorationImage(image: AssetImage("images/p1.webp")),
      //         color: Colors.teal, borderRadius: BorderRadius.circular(30))),
      // child: Image.network("https://media.istockphoto.com/id/1061495120/photo/unrecognizable-woman-using-digital-tablet-in-modern-office.jpg?s=170667a&w=0&k=20&c=4z_hOBwl2PJSTyjEsB_3sila-UbWa_oYX8OLo5eOPac="),

      // child: Container(
      //     padding: EdgeInsets.all(20),
      //     width: 200,
      //     height: 200,
      //     decoration: BoxDecoration(
      // color: Colors.teal,
      // border: Border.all(
      //     color: Color.fromARGB(255, 11, 93, 53), width: 5),
      // borderRadius: BorderRadius.circular(30),
      // gradient: LinearGradient(colors: [Colors.red,Colors.orange,Color.fromARGB(255, 213, 220, 22)],begin: Alignment.topCenter,end: Alignment.bottomCenter),
      // boxShadow: [
      //   BoxShadow(
      //       color: Colors.grey,
      //       offset: Offset(0, 0),
      //       blurRadius: 10,
      //       spreadRadius: 10),]
      // ))