import 'dart:io';

void main(){
  // print('dart');
  // stdout.write('enter: ');
  // var name = stdin.readLineSync(); // input
  // print('Welcome, $name');

// delaration of variable

  // int? a; //  ? is value are the null allow
  // BigInt b; // is stores large number of integer
  // double d; // is store decimal number
  // num n; // is store both int and double
  // bool istrue; // is boolean type data
  // print (a);
  // String name1 = "piyush";// store string type value
  // print (name1);

// var and dynamic

  // var subject = "maths"; // var is store one type of data in first time then same type of data can store
  // var num = 2;
  //
  // var check; // this a dynamic type because
  // check = "done"; //this string and
  // check = 0; // this integer and
  // check = false; // this boolean and
  // dynamic set; // denoted this keyword dynamic

// class and funtion

  // var test = first(); // creating an class object
  // test.printname('piyush');// function calling
  // test.printname('pranjal');// function calling
  // test.printname('hari');// function calling
  // var result = test.Add(5,6); // function with return value
  // print(result);

// list = it store data in any type

  // var list  = [1,2,3,4,5,6];
  // list.add(7); // add value in last index
  // list.replaceRange(0, 6, [6,5,4,3,2,1]); // replace with range method
  // print(list);

  // list.removeLast(); // remove last element of list
  // list.remove(6); // remove particular value
  // list.removeAt(0);// remove particular index value
  // list.removeRange(0, 4); // remove the element throught a range
  // print(list);




  // var name = [];
  // name.addAll(list); // all element of list add to this list
  // name.add("ram"); // add element string
  // name.add(false); // add element bool
  // name.insert(3, 'change'); // add element by indexing
  // name.insertAll(4, list);// add full list by indexing
  // print(name);
  // name[0] = "start"; // replace the index value
  // print(name);
  // print("length: ${name.length}");// total length of list
  // print("reversed : ${name.reversed}"); // reverse the list
  // print("First : ${name.first}"); // print the first element the list
  // print("Last : ${name.last}"); // print the last element the list
  // print("Is Empty : ${name.isEmpty}"); // check the list is empty
  // print("Is NOT Empty : ${name.isNotEmpty}"); // check the list is not empty

// list end

// map start

  // var mapping = {
  //   'name' : 'piyush',
  //   'age' : 20,
  //   'percent': 88.5,
  //   'details': true
  // };
  // print(mapping);
  // mapping['name'] = 'sethiya'; // replace the value using key and assigning
  //
  // print(mapping['name']);

  // var maps = Map();
  // maps['data'] = 'done';
  // maps['data1'] = 'done1';
  // maps['data2'] = 'done2';
  // print(maps.isEmpty); // check map is empty
  // print(maps.isNotEmpty); // check map is not empty
  // print(maps.length); // length of map
  // print(maps.keys); // all keys name print
  // print(maps.containsKey('data')); // check key are exist or not
  // print(maps.containsValue('done1')); // check value are exist or not
  // print(maps.remove('data2')); // remove value for key
  // print(maps);

// map end
// final and const keyword

  // final String name; // we have no reassign the data on this variable
  // name = 'Piyush ';
  // // name = 'sethiya';
  //
  // const name1 = 'try'; // variable assign the value at the time and not reassign again
  // // name1 = 'not-done';
  // print(name1);

// final and const end
// conditional programming

  // var a = 100;
  // if(a>100){
  //   print('greater');
  // } else if(a<100) {
  //   print('smaller');
  // } else{
  //   print('equal');
  // }

// end conditional programming
// loop

// for
  // int i = 1;
  // for(int a = 1; a<=10; a++){
  //   print('loop $i complete');
  //   i++;
  // }

//  do-while
//   int no = 100;
//   do{
//     print('do working');
//   }
//   while(no<50);

// while
//   int no = 100;
//   while (no>50){
//     print('working ');
//     no--;
//   }

// end loop
}



class first{

  // first(){ // default Constructer
  //   print('this is defualt constructor');
  // }
// // function
  // void printname(String name){
  // print(name);
  // }
  //
  // int Add(int n, int b){
  //
  //   int sum = n+b;
  //   return sum;
  // }
}


