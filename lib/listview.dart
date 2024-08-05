import 'package:flutter/cupertino.dart';
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
          primarySwatch: Colors.yellow
      ),
      home: listView(),
    );
  }
}

class listView extends StatefulWidget{
  @override
  _listViewState createState() => _listViewState();
}

class _listViewState extends State<listView>{
  @override
  Widget build(BuildContext context){

    var arrdata = ['ram', 'hari', 'shyam', 'kishan', 'radhe','rani','tara','shree'];
    var arrnum = ['1','2','3','4','5','6','7','8'];

    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),


      // body: ListView(
      //     reverse: true,
      //     scrollDirection: Axis.horizontal,
      //     children:[
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('One', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('Two', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('Three', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('Four', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('Five', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),),
      //       ),
      //     ]
      // ),

// list view builder

      // body: ListView.builder(itemBuilder: (context,index){
      //   return SingleChildScrollView(
      //       child: Text(arrdata[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500) ,));
      // },
      //   itemCount: arrdata.length,
      //   itemExtent: 100,
      // ),

// list view separated

      // body: ListView.separated(itemBuilder: (context,index){
      //   return SingleChildScrollView(
      //       child: Text(arrdata[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500) ,));
      // },
      //   itemCount: arrdata.length,
      //   separatorBuilder: (context, index){
      //     return Divider(thickness : 2, color: Colors.black , height: 100,);
      //   },
      // ),

// Small format Example of listview

      // body: ListView.separated(itemBuilder: (context,index){
      //   return Row(
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Column(
      //           children: [
      //             Text(arrdata[index], style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),),
      //             Text(arrdata[index], style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),),
      //             Text(arrdata[index], style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),),
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(arrdata[index], style: TextStyle(fontWeight: FontWeight.w900, fontSize: 11),),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(arrdata[index], style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),),
      //       ),
      //     ],
      //   );
      // }, separatorBuilder: (context,index){
      //   return Divider(height: 100, thickness: 2,);
      // }, itemCount: 4
      // ),


// list tile

      // body: ListView.separated(itemBuilder: (context,index){
      //   return ListTile(
      //     // leading: Text('${index+1}', style: TextStyle(fontSize: 18),),
      //     title: Text(arrdata[index], style: TextStyle(fontSize: 21),),
      //     subtitle: Text('number = $arrnum'),
      //     trailing: Container(
      //         decoration: BoxDecoration(
      //           color: Colors.green,
      //           borderRadius: BorderRadius.circular(15)
      //
      //         ),
      //         child: TextButton(
      //
      //             onPressed: (){ print('done');},
      //             child: Icon(Icons.add)
      //         ),
      //     ),
      //   );
      // }, separatorBuilder: (context,index){
      //   return Divider(height: 50, thickness: 4,);
      // }, itemCount: arrdata.length
      // ),

// Circle Avatar

      // body: Center(
      //     child: CircleAvatar(
      //       child: Container(
      //         // color: Colors.yellow,
      //         width: 80,
      //           height: 80,
      //           child: Column(
      //             children: [
      //               Container(
      //                   width: 50,
      //                   height: 55,
      //                   child: Image.asset('assets/images/pboy.png')),
      //               Text('name',style: TextStyle(color: Colors.white),),
      //         ],
      //       )),
      //       // radius: 50,
      //       maxRadius: 60,
      //       // minRadius: 50,
      //       backgroundColor: Colors.green,
      //     ),
      // ),

// Custom Font

      // body: Center(
      //     child: Text(
      //       'hello world',
      //       style: TextStyle(
      //           fontFamily: 'Cus_font',fontSize: 31,fontWeight: FontWeight.w700),
      //     ),
      // ),

// Card widget

      // body: Center(
      //   child: Card(
      //     elevation: 11,
      //     shadowColor: Colors.black,
      //     child: Padding(
      //       padding: const EdgeInsets.all(20),
      //       child: Text('Hello WOrld',style: TextStyle(fontSize: 31, fontFamily: 'cus_font'),),
      //     ),
      //   ),
      // ),


    );
  }
}
