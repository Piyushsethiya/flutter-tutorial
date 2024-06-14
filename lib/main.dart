import 'package:flutter/material.dart';

void main(){
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "main working",
      // debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard"),
        backgroundColor: Colors.black,
        centerTitle: true,
        foregroundColor: Colors.white,

      ),
      body: Container(
        color: Colors.green.shade50,
      ),
    );
  }
}
