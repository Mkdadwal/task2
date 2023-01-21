// // import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       body: Center(
//         child: OuterContainer(),
//       ),
//     ),
//   ));
// }

// class OuterContainer extends StatefulWidget {
//   // const OuterContainer({super.key});

//   @override
//   State<OuterContainer> createState() => OuterContainerState();
// }

// class OuterContainerState extends State<OuterContainer> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.all(20),
//       height: 250,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: Colors.grey,
//         // borderRadius: BorderRadius.circular(20)
//       ),
//       child: InnerLayout(),
//     );
//   }
// }

// class InnerLayout extends StatelessWidget {
//   // const InnerLayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
//       Container(
//         padding: EdgeInsets.only(left: 20, top: 10),
//         // ignore: sort_child_properties_last
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               child: Text(
//                 "Sarita \nBlood \nBank",
//                 style: TextStyle(fontSize: 35),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 10),
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   border: Border.all(color: Colors.green, width: 2),
//                   borderRadius: BorderRadius.circular(5)),
//               child: Icon(
//                 Icons.circle,
//                 color: Colors.green,
//               ),
//             )
//           ],
//         ),
//         margin: EdgeInsets.all(20),
//         // height: double.infinity,
//         height: 200,
//         width: MediaQuery.of(context).size.width / 2.2,
//         decoration: BoxDecoration(
//             color: Colors.blueGrey,
//             border: Border.all(color: Colors.black),
//             borderRadius: BorderRadius.circular(20)),
//       ),
//       Container(
//         margin: EdgeInsets.only(top: 40, left: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Container(
//               child: Text(
//                 "Blood Group",
//                 style: TextStyle(color: Colors.red, fontSize: 15),
//               ),
//             ),
//             Container(
//               child: Text("B +ve", style: TextStyle(fontSize: 20)),
//             ),
//             Container(
//               child: Text("Add Units"),
//             ),
//             Container(
//               child: MyCounter(),
//             )
//           ],
//         ),
//       )
//     ]);
//   }
// }

// class MyCounter extends StatefulWidget {
//   const MyCounter({super.key});

//   @override
//   State<MyCounter> createState() => MyCounterState();
// }

// class MyCounterState extends State<MyCounter> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
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

class OuterContainer extends StatelessWidget {
  // const OuterContainer({super.key});

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
                style: TextStyle(fontSize: 35, color: Colors.white),
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
            color: Colors.grey, borderRadius: BorderRadius.circular(20)),
      ),
      Container(
        margin: EdgeInsets.only(top: 40, left: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
  MyCounterState() {
    this.counter = counter;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(4),
          height: 40,
          width: 104,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 145, 144, 144)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
                height: 30,
                width: 30,
                // child:ElevatedButton(
                //   onPressed: sub,
                //   child: Center(child: Text("-")),
                //   style: ElevatedButton.styleFrom(
                //       backgroundColor: Color.fromARGB(255, 185, 182, 182)),
                // ),
                child: counter > 0
                    ? ElevatedButton(
                        onPressed: sub,
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 185, 182, 182)),
                        child: const Center(child: Text("-")),
                      )
                    : const SizedBox(
                        height: 30,
                        width: 30,
                      )),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(counter.toString()),
            ),
            SizedBox(
                height: 30,
                width: 30,
                child: counter < 10
                    ? ElevatedButton(
                        onPressed: add,
                        child: Text("+"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color.fromARGB(255, 185, 182, 182)),
                      )
                    : SizedBox(
                        height: 30,
                        width: 30,
                      )),
          ]),
        ),
        if (counter == 10)
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "You have reached maximum unit limit",
              style: TextStyle(fontSize: 10),
            ),
            decoration: BoxDecoration(color: Colors.red),
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