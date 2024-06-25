import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  signin()async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email.text, password: password.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: 'Enter Email'
              ),
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(
                hintText: 'Enter password'
              ),
            ),
            ElevatedButton(onPressed: (()=> signin), child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
