import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            // padding: EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 50,
                    margin: EdgeInsets.all(10),
                    // height: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.green,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text("I am red")),
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.all(10),
                    // height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(
                        color: Colors.green,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text("I am blue")),
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.all(10),
                    // height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(
                        color: Colors.green,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text("I am green")),
                  )
                ]),
          ),
        ),
      )));
}

// List<Widget>? getMyWidgets() {
//   List<Color> myContainerColors = [
//     Colors.amber,
//     Colors.black,
//     Colors.blue,
//     Colors.green
//   ];
//   List<Widget> myResult = [];

//   for(var i=0;i<myContainerColors.length;i++){
//     myResult.add(Container(
//       width: 40,
//         height: 40,
//         color: myContainerColors[i],
//         child: Center(child: Text("${i + 1}")),
//       ));
//     }
//     return myResult;
  
// }








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
