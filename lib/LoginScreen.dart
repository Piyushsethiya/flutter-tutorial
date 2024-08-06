import 'package:flutter/material.dart';
import 'loginapicall.dart';  // Import the file where your login function is defined

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(title: Text('Login')),
    //   body: Padding(
    //     padding: const EdgeInsets.all(16.0),
    //     child: Column(
    //       children: [
    //         TextField(
    //           controller: emailController,
    //           decoration: InputDecoration(labelText: 'Email'),
    //           keyboardType: TextInputType.emailAddress,  // Adds email keyboard type
    //         ),
    //         TextField(
    //           controller: passwordController,
    //           decoration: InputDecoration(labelText: 'Password'),
    //           obscureText: true,
    //         ),
    //         SizedBox(height: 20),
    //         ElevatedButton(
    //           onPressed: () {
    //             final email = emailController.text;
    //             final password = passwordController.text;
    //             login(context, email, password);  // Call the login function
    //           },
    //           child: Text('Login'),
    //         ),
    //       ],
    //     ),
    //   ),
    // );

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login.png'),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 35,top: 150),
                  child: Text('Login\nHere', style: TextStyle(color: Colors.white, fontSize: 33,fontWeight: FontWeight.bold),),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5, right: 35, left: 35),
                  child: Column(
                    children: [
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,  // Adds email keyboard type
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 300, top: 30, ),
                      //   child: Container(
                      //     color: Colors.green,
                      //     child: TextButton(onPressed: (){
                      //       print('login successful');
                      //     }, child: Text('Login', style: TextStyle(color: Colors.black,fontSize: 21),),),
                      //   ),
                      // )
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sign In',style: TextStyle(color: Color(0xff4c505b), fontSize: 27,fontWeight: FontWeight.w700),),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff4c505b),
                            child: IconButton(
                              color: Colors.white,
                              onPressed: (){
                                final email = emailController.text;
                                final password = passwordController.text;
                                login(context, email, password);  // Call the login function
                              },
                              icon: Icon(Icons.arrow_forward),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, 'register');
                            } ,
                            child: Text("Sign Up",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  color: Color(0xff4c505b)),
                            ),
                          ),
                          TextButton(
                            onPressed: (){} ,
                            child: Text("Forget Password",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  color: Color(0xff4c505b)),
                            ),
                          )
                        ],
                      )
                    ],),

                ),
              ),
            ]),
      ),
    );
  }
}