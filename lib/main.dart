// import 'dart:html';

import 'dart:ffi';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn/login_pro.dart';
import 'package:intl/intl.dart';
import 'package:learn/register_pro.dart';
// import 'package:learn/complete_pro/login.dart';
import 'package:learn/complete_pro/wrapper.dart';
// import 'package:learn/complete_pro/login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute : 'login',
      routes: {'login': (context) => Mylogin(),'register': (context) => Myregister()},
      title: "main working",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green
      ),
      // home: DashBoardScreen(),
      home: Wrapper(),
      // home: login(),
    );
  }
}

class DashBoardScreen extends StatefulWidget{
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen>{

// portion of register
  var name = TextEditingController();
  var username = TextEditingController();
  var password = TextEditingController();
  var mobile_no = TextEditingController();
//end portion

// Grid portion

  var arrcolor = [Colors.red,Colors.blue,Colors.purple,Colors.pinkAccent,Colors.black,Colors.amber,Colors.yellow,Colors.cyan,Colors.deepPurple];

//end grid portion

  @override
  Widget build(BuildContext context){
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Colors.black,
        centerTitle: true,
        foregroundColor: Colors.white,

      ),

// register start page
//       body: Container(
//         color: Colors.cyan[50],
//         child: Center(
//           child: Container(
//             width: 300,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CircleAvatar(
//                   radius: 50,
//                   backgroundImage: AssetImage('assets/images/temp_logo.jpg'),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextField(
//                     controller: name,
//                     decoration: InputDecoration(
//                       hintText: "Enter Name",
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(11),
//                           borderSide: BorderSide(color: Colors.green,width: 4),
//                         ),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(11),
//                           // borderSide: BorderSide(color: Colors.yellow),
//
//                         ),
//                       prefixIcon: Icon(Icons.upcoming_sharp)
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextField(
//                     // enabled: false,
//                     controller: username,
//                     decoration: InputDecoration(
//                       hintText: "Enter Email",
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(11),
//                         borderSide: BorderSide(color: Colors.green,width: 4),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           // color: Colors.amber,
//                           // width: 4,
//                         ),
//                         borderRadius: BorderRadius.circular(11),
//                       ),
//                       disabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(11),
//                         borderSide: BorderSide(color: Colors.black54,width: 4),
//                       ),
//                       // suffixText: "Username Exits",
//                       suffixIcon: IconButton(
//                         icon: Icon(Icons.remove_red_eye, color: Colors.red,),
//                         onPressed: (){
//
//                         },
//                       ),
//                       // prefixText: "Enter Username ",
//                       prefixIcon: Icon(Icons.email),
//
//                       // border: OutlineInputBorder(
//                       //   borderRadius: BorderRadius.circular(11),
//                       //   // borderSide: BorderSide(color: Colors.yellow),
//                       //
//                       // )
//                     ),
//                   ),
//                 ),
//
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextField(
//                     controller: password,
//                     obscureText: true,
//                     obscuringCharacter: "*",
//                     decoration: InputDecoration(
//                       hintText: "Enter Password",
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(11),
//                           borderSide: BorderSide(color: Colors.green,width: 4),
//                         ),
//                         prefixIcon: Icon(Icons.password_outlined),
//
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(11),
//                           // borderSide: BorderSide(color: Colors.yellow),
//
//                         )
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextField(
//                     keyboardType: TextInputType.datetime,
//                     controller: mobile_no,
//                     decoration: InputDecoration(
//                       hintText: "Enter Mobile Number",
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(11),
//                           borderSide: BorderSide(color: Colors.green,width: 4),
//                         ),
//
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(11),
//                           // borderSide: BorderSide(color: Colors.yellow),
//
//                         ),
//                       prefixIcon: Icon(Icons.phone),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   color: Colors.cyan,
//                   child: ElevatedButton(
//                       onPressed: (){
//                     String fname = name.text.toString();
//                     String u_name = username.text.toString();
//                     String u_pass = password.text.toString();
//                     String m_no = mobile_no.text.toString();
//                     print("Name: $fname, Email: $u_name, Pass: $u_pass, Mobile No.: $m_no");
//                   }, child: Text('Sign Up',
//                     style: TextStyle(fontSize: 21,color: Colors.black54),)
//
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),

// register end page

//  Date and time

      // body: Container(
      //     height: 500,
      //     child: ListView(
      //       // child: Column(
      //       //   mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text('Current Total Time: $time', style: TextStyle(fontSize: 20),),
      //           Text('Current year: ${time.year}', style: TextStyle(fontSize: 20),),
      //           Text('Current Month: ${time.month}', style: TextStyle(fontSize: 20),),
      //           Text('Current Day: ${time.day}', style: TextStyle(fontSize: 20),),
      //           Text('Current Week-Day: ${time.weekday}', style: TextStyle(fontSize: 20),),
      //           Text('Current Hour: ${time.hour}', style: TextStyle(fontSize: 20),),
      //           Text('Current minute: ${time.minute}', style: TextStyle(fontSize: 20),),
      //           Text('Current Second: ${time.second}', style: TextStyle(fontSize: 20),),
      //           Text('Formated Time: ${DateFormat('h:m:s').format(time)}', style: TextStyle(fontSize: 20),),
      //           Text('Formated Time: ${DateFormat('jms').format(time)}', style: TextStyle(fontSize: 20),),
      //           Text('Formated Time: ${DateFormat('yMMMd').format(time)}', style: TextStyle(fontSize: 20),),
      //           Text('Formated Time: ${DateFormat('E').format(time)}', style: TextStyle(fontSize: 20),),
      //
      //           Container(
      //             width: 10,
      //
      //
      //             margin: EdgeInsets.only(top: 15),
      //             color: Colors.black,
      //             child: TextButton(
      //
      //                 onPressed: (){
      //                   setState(() {
      //
      //                   });
      //                 }, child: Text("Update Time", style: TextStyle(fontSize: 25,color: Colors.white),)),
      //           )
      //         ],
      //
      //             ),
      //     ),
      // ),

// Date picker

      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text("Select Date", style: TextStyle(fontSize: 21),),
      //       Container(
      //           color: Colors.green,
      //           child: TextButton(onPressed: () async {
      //             DateTime? datepicked = await showDatePicker(  // showDatePicker is selected on day
      //                 context: context,
      //                 initialDate: DateTime.now(),
      //                 firstDate: DateTime(2020),
      //                 lastDate: DateTime(2026));
      //
      //             if(datepicked != null){
      //               print("Date Selected: ${datepicked.day}-${datepicked.month}-${datepicked.year}");
      //             }
      //           }, child: Text('show',style: TextStyle(color: Colors.black, fontSize: 21),)))
      //     ],
      //   ),
      // )

//Date and Time Picker

      // body: ListView(
      //   children: [
      //     Text("Select Date", style: TextStyle(fontSize: 21),),
      //     Container(
      //         color: Colors.green,
      //         child: TextButton(onPressed: () async {
      //           DateTime? datepicked = await showDatePicker(  // showDatePicker is selected on day
      //               context: context,
      //               initialDate: DateTime.now(),
      //               firstDate: DateTime(2020),
      //               lastDate: DateTime(2026));
      //
      //           if(datepicked != null){
      //             print("Date Selected: ${datepicked.day}-${datepicked.month}-${datepicked.year}");
      //           }
      //         },
      //             child: Text('Date',style: TextStyle(color: Colors.black, fontSize: 21),))),
      //     Text("Select Time", style: TextStyle(fontSize: 21),),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 150),
      //       child: Container(
      //         color: Colors.red,
      //         child: TextButton(onPressed: () async {
      //           TimeOfDay? Time = await showTimePicker(
      //               context: context,
      //               initialTime: TimeOfDay.now(),
      //               initialEntryMode: TimePickerEntryMode.input // open input and dial
      //               // initialEntryMode: TimePickerEntryMode.dial // open dial and input
      //               // initialEntryMode: TimePickerEntryMode.inputOnly // only open input
      //               // initialEntryMode: TimePickerEntryMode.dialOnly // only open dial
      //           );
      //           if(Time != null){
      //             print("Selected Time: ${Time.hourOfPeriod}: ${Time.minute} ${Time.hour >= 12 ? "PM" : "AM"}");
      //             // print("Selected Time: ${DateFormat('jms').format(Time as DateTime)}");
      //           }
      //         },
      //             child: Text("Time", style: TextStyle(fontSize: 21, color: Colors.black),)),
      //       ),
      //     )
      //   ],
      // ),
      // ),

// end picker

// grid start
// count

      // body: GridView.count(crossAxisCount: 3,  // divide a part
      // mainAxisSpacing: 21 ,   // spacing of horizontally
      // crossAxisSpacing: 21,  // spacing of vertically
      // children: [
      //   Container(color: Colors.cyan,),
      //   Container(color: Colors.green,),
      //   Container(color: Colors.yellowAccent,),
      //   Container(color: Colors.amber,),
      //   Container(color: Colors.black,),
      //   Container(color: Colors.pinkAccent,),
      //   Container(color: Colors.blue,),
      //   Container(color: Colors.purple,),
      // ],
      // )

// Extend

      // body: Container(
      //   child: GridView.extent(maxCrossAxisExtent: 100,
      //         crossAxisSpacing: 21,
      //         mainAxisSpacing: 21,
      //         children: [
      //       Container(color: Colors.cyan,),
      //       Container(color: Colors.green,),
      //       Container(color: Colors.yellowAccent,),
      //       Container(color: Colors.amber,),
      //       Container(color: Colors.black,),
      //       Container(color: Colors.pinkAccent,),
      //       Container(color: Colors.blue,),
      //       Container(color: Colors.purple,),
      //       Container(color: Colors.blueGrey,),
      //     ],
      //   ),
      // )

// builder

      // body: GridView.builder( itemBuilder: (context, index){
      //   return Container(color: arrcolor[index],);
      // },
      //   itemCount: arrcolor.length,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 21, crossAxisSpacing: 21
      //     // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,mainAxisSpacing: 21, crossAxisSpacing: 21
      //   ),
      // ),

// callback function

        // body: Center(
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Container(
        //       color: Colors.black,
        //       child: TextButton(
        //         child: Text("Click Me!",style: TextStyle(color: Colors.cyan),),
        //         onPressed: callback,
        //       ),
        //     ),
        //   ),
        // ),

// stack widgets

        // body: Container(
        //   width: 300,
        //   height: 300,
        //   child: Stack(
        //     children: [
        //       Container(
        //         width: 200,
        //         height: 200,
        //         color: Colors.orange,
        //       ),
        //       Positioned(
        //         left: 21,
        //         top: 21,
        //         // height: 30,
        //         // right: 15,
        //         child: Container(
        //           width: 200,
        //           height: 200,
        //           color: Colors.green,
        //         ),
        //       ),
        //       Positioned(
        //         left: 42,
        //         top: 42,
        //         // height: 30,
        //         // right: 15,
        //         child: Container(
        //           width: 200,
        //           height: 200,
        //           color: Colors.red,
        //         ),
        //       ),
        //     ],
        //   ),
        // )

// sizedbox


// body: Center(
//       child: SizedBox(
//         width: 200,
//         height: 50,
//         child: ElevatedButton(
//           onPressed: (){
//           },
//           child: Text('Click', style: TextStyle(color: Colors.cyan),),
//         ),
//       ),
//     )

// expand sizedbox - it cover full screen for the max-height and max-width

        // body: ConstrainedBox(
        //   constraints: BoxConstraints(
        //     maxHeight: 50,
        //     maxWidth: 200,
        //     minHeight: 30,
        //     minWidth: 100,
        //   ),
        //   child: SizedBox.expand(
        //     child: ElevatedButton(
        //       onPressed: (){
        //
        //       },
        //       child: Text('Click', style: TextStyle(color: Colors.cyan),),
        //     ),
        //   ),
        // )

// Shrink sizedbox - it cover full screen for the min-height and main-width

        // body: ConstrainedBox(
        //   constraints: BoxConstraints(
        //     minHeight: 30,
        //     minWidth: 100,
        //     maxHeight: 80,
        //     maxWidth: 400,
        //   ),
        //   child: SizedBox.shrink(
        //     child: ElevatedButton(
        //
        //       onPressed: (){
        //
        //       },
        //       child: Text('Click', style: TextStyle(color: Colors.cyan),),
        //     ),
        //   ),
        // )

// Square sizebox

        // body: Center(
        //   child: SizedBox.square(
        //     dimension: 80,
        //     child: ElevatedButton(
        //
        //       onPressed: (){
        //
        //       },
        //       child: Text('Click', style: TextStyle(color: Colors.cyan),),
        //     ),
        //   ),
        // )

// Rich Text Widget

// normal system spaning text
//     body: Row(
//       children: [
//         Text('Hello   ',style: TextStyle(fontSize: 16, color: Colors.green),),
//         Text('World!',style: TextStyle(fontSize: 34, color: Colors.blue,fontWeight: FontWeight.bold),)
//       ],
//     ),

//main Rich Text widget

        // body: RichText(
        //   text: TextSpan(
        //     style: TextStyle(
        //       fontSize: 21,
        //       fontWeight: FontWeight.w700,
        //       fontFamily: 'Cus_font',
        //       color: Colors.blue
        //     ),
        //     children:<TextSpan> [
        //       TextSpan(text: 'hello ',style: TextStyle(fontSize: 26)),
        //       TextSpan(text: 'World, ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 31)),
        //       TextSpan(text: 'Proper ',style: TextStyle(color: Colors.green)),
        //       TextSpan(text: 'Work. ',style: TextStyle(color: Colors.red)),
        //     ]
        //   ),
        // ),

// Icon Widget

        // body: Center(
        //   child: Icon(
        //     Icons.schedule,
        //     size: 50,
        //     color: Colors.red,
        //   ),
        // ),

// Positioned Widget

        body:Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.greenAccent,
          child: Stack(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.white70,
              ),
              Container(
                width: 200,
                height: 100,
                color: Colors.black12,
              )
            ],
          ),
        )
    );

  }
}