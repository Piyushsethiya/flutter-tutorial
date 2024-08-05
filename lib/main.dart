// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:learn/loginapicall.dart';

import 'home_screen.dart';
import 'listview.dart';
import 'LoginScreen.dart';

void main(){
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
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),  // Define the home route
      },
      // home: DashBoardScreen(),
      // home: listView(),
      // home: LoginScreen(),
    );
  }
}

class DashBoardScreen extends StatefulWidget{
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen>{

  var username = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context){
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard"),
        // backgroundColor: Colors.black,
        centerTitle: true,
        // foregroundColor: Colors.white,

      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  // enabled: false,
                  controller: username,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.green,width: 4),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.amber,
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.black54,width: 4),
                      ),
                      // suffixText: "Username Exits",
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye, color: Colors.red,),
                        onPressed: (){

                        },
                      ),
                      prefixText: "Enter Username ",
                      prefixIcon: Icon(Icons.email),

                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(11),
                      //   // borderSide: BorderSide(color: Colors.yellow),
                      //
                      // )
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        // borderSide: BorderSide(color: Colors.yellow),

                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        // borderSide: BorderSide(color: Colors.yellow),

                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        // borderSide: BorderSide(color: Colors.yellow),

                      )
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){
                String u_name = username.text.toString();
                String u_pass = password.text.toString();
                print("Email: $u_name, Pass: $u_pass");
              }, child: Text('Login',
                style: TextStyle(fontSize: 21,color: Colors.black54),))
            ],
          ),
        ),
      ),
    );
  }
}
