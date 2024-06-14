// import 'dart:html';

import 'package:flutter/material.dart';

void main(){
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "main working",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatefulWidget{
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen>{

  var name = TextEditingController();
  var username = TextEditingController();
  var password = TextEditingController();
  var mobile_no = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Colors.black,
        centerTitle: true,
        foregroundColor: Colors.white,

      ),
      body: Container(
        color: Colors.cyan[50],
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      hintText: "Enter Name",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.green,width: 4),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          // borderSide: BorderSide(color: Colors.yellow),

                        ),
                      prefixIcon: Icon(Icons.upcoming_sharp)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    // enabled: false,
                    controller: username,
                    decoration: InputDecoration(
                      hintText: "Enter Email",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.green,width: 4),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          // color: Colors.amber,
                          // width: 4,
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
                      // prefixText: "Enter Username ",
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
                    controller: password,
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.green,width: 4),
                        ),
                        prefixIcon: Icon(Icons.password_outlined),

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
                    controller: mobile_no,
                    decoration: InputDecoration(
                      hintText: "Enter Mobile Number",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.green,width: 4),
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          // borderSide: BorderSide(color: Colors.yellow),

                        )
                    ),
                  ),
                ),
                Container(
                  color: Colors.cyan,
                  child: ElevatedButton(
                      onPressed: (){
                    String fname = name.text.toString();
                    String u_name = username.text.toString();
                    String u_pass = password.text.toString();
                    String m_no = mobile_no.text.toString();
                    print("Name: $fname, Email: $u_name, Pass: $u_pass, Mobile No.: $m_no");
                  }, child: Text('Sign Up',
                    style: TextStyle(fontSize: 21,color: Colors.black54),)

                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
