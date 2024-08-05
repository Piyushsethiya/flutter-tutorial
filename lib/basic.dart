// import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter try',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        title: Text('Flutter Container'),
      ),

//container and center

      body:Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blueAccent.shade100,
          child: Center(
              child: Text(
                "This is Center of Container", style: TextStyle(color: Colors.white),
              )
          ),
        )
      )

//text

      // body: Text('Done Test',style: TextStyle(
      //   fontSize: 25,
      //   color: Colors.cyan,
      //   fontWeight: FontWeight.w900,
      //   backgroundColor: Colors.black,
      //
      // ),),

//button

//textButton
//       body: TextButton(
//         child: Text('click here!'),
//         onPressed: () {
//           print('Text Button Tapped');
//         },
//         onLongPress: (){
//           print('Long place');
//         },
//       ),

// raised button

      // body: ElevatedButton(
      //   child: Text('Elevated button'),
      //   onPressed: (){
      //     print('button done');
      //   },
      //   onLongPress: (){
      //     // Icon(Icons.import_contacts_sharp);
      //     print('Long button done');
      //   },
      // ),

// outline button

      // body: OutlinedButton(
      //   child: Text('Outlined Btn'),
      //   onPressed: (){
      //     print('pressed outlined btn');
      //   },
      // onLongPress: (){
      //     print('Long button done');
      //   },
      // ),

// Add Image

      // body: Center(
      //   child: Container(
      //     width: 200,
      //     height: 200,
      //     child: Image.asset('assets/images/profile.jpg')),
      // ),

// Columns and Rows

      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Text('a', style: TextStyle(fontSize: 50),),
      //     Text('b', style: TextStyle(fontSize: 50),),
      //     Text('c', style: TextStyle(fontSize: 50),),
      //     Text('d', style: TextStyle(fontSize: 50),),
      //     Text('e', style: TextStyle(fontSize: 50),),
      //   ],
      // ),

      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //       Text('a', style: TextStyle(fontSize: 50),),
      //       Text('b', style: TextStyle(fontSize: 50),),
      //       Text('c', style: TextStyle(fontSize: 50),),
      //       Text('d', style: TextStyle(fontSize: 50),),
      //       Text('e', style: TextStyle(fontSize: 50),),
      //     ],
      // ),

      // body: Container(
      //   width: 300,
      //   height: 500,
      //   child:Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       Row(
      //         // crossAxisAlignment: CrossAxisAlignment.center,
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Text('r1', style: TextStyle(fontSize: 50),),
      //           Text('r2', style: TextStyle(fontSize: 50),),
      //           Text('r3', style: TextStyle(fontSize: 50),),
      //           Text('r4', style: TextStyle(fontSize: 50),),
      //           Text('r5', style: TextStyle(fontSize: 50),),
      //         ]
      //       ),
      //           Text('a', style: TextStyle(fontSize: 50),),
      //           Text('b', style: TextStyle(fontSize: 50),),
      //           Text('c', style: TextStyle(fontSize: 50),),
      //           Text('d', style: TextStyle(fontSize: 50),),
      //           Text('e', style: TextStyle(fontSize: 50),),
      //        ],
      //   ),
      // )

// Expended Widget

      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Expanded(
      //       flex: 3,
      //       child: Container(
      //         height: 100,
      //         color: Colors.blue,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 5,
      //       child: Container(
      //         height: 100,
      //         color: Colors.green,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 5,
      //       child: Container(
      //
      //         height: 100,
      //         color: Colors.yellow,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 3,
      //       child: Container(
      //         height: 100,
      //         color: Colors.redAccent,
      //       ),
      //     ),
      //   ],
      // ),

// Add Decoration to container

      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   color: Colors.blue.shade50,
      //   child: Center(
      //     child: Container(
      //       width: 150,
      //       height: 150,
      //       // color: Colors.blueGrey,
      //       decoration: BoxDecoration(
      //         color: Colors.blueGrey,
      //         // borderRadius: BorderRadius.circular(11)
      //         // borderRadius: BorderRadius.only(topLeft: Radius.circular(21), rightRight: Radius.circular(51)),
      //         border: Border.all(
      //           width: 10,
      //           color: Colors.indigo
      //       ),
      //         boxShadow: [
      //           BoxShadow(
      //             blurRadius: 51,
      //             spreadRadius: 200,
      //             color: Colors.pink
      //           )
      //         ],
      //         shape: BoxShape.circle
      //       ),
      //     ),
      //   ),
      // ),

// All about Inkwell

      // body: Center(
      //   child: InkWell(
      //     onTap: (){
      //       print('ontap done');
      //     },
      //     onDoubleTap: (){
      //       print('on Double tap done');
      //     },
      //     onLongPress: (){
      //       print('on Long tap done');
      //
      //     },
      //     child: Container(
      //         width: 200,
      //         height: 200,
      //       color: Colors.yellow,
      //       child: Center(
      //           child: InkWell(
      //             onTap: (){
      //               print('used done');
      //
      //             },
      //               child: Text('Click Here', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),))),
      //     ),
      //   ),
      // ),

// ScrollView and Its Types

      // body: Padding(
      //   padding: const EdgeInsets.all(15),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: SingleChildScrollView(
      //             scrollDirection: Axis.horizontal,
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.cyan,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.purple,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.lightBlueAccent,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),
      //                   width: 200,
      //                   height: 200,
      //                   color: Colors.deepOrangeAccent,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(right: 11),
      //           height: 400,
      //           color: Colors.yellow,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(right: 11),
      //           height: 400,
      //           color: Colors.lightGreen,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(right: 11),
      //           height: 400,
      //           color: Colors.redAccent,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

// Padding and Margin

      // body: Padding(
      //   // padding: const EdgeInsets.symmetric(horizontal: 100),
      //   // padding: const EdgeInsets.symmetric(vertical: 100),
      //   // padding: const EdgeInsets.fromLTRB(30, 40, 20, 50),
      //   // padding: const EdgeInsets.all(150),
      //   padding: const EdgeInsets.only(top: 350,left: 150),
      //   child: Text('Hello World! ', style: TextStyle(fontSize: 30),),
      // ),

// margin

      // body: Container(
      //   margin: EdgeInsets.all(150),
      //   color: Colors.cyan,
      //   child: Padding(
      //     padding: const EdgeInsets.all(15),
      //     child: Text('Hello World!', style: TextStyle(fontSize: 21,color: Colors.black),),
      //   ),
      // ),
    );
  }
}
