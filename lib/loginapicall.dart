import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> login(BuildContext context, String email, String password) async {
  try {
    final url = Uri.parse('http://localhost:8080/shop/api/login');
      final response = await http.post(url, body: {
      'email': email,
      'password': password,
    });
    print('Response data: ${response}');
    print('Response body: ${response.body}');

    print('Response status: ${response.statusCode}');

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);

      if (responseData['status'] == 'success') {
        // Navigate to the next screen if login is successful
        Navigator.pushNamed(context, '/home');
      } else {
        // Show error message if login fails
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text('Login Failed'),
            content: Text(responseData['message']),
            actions: <Widget>[
              TextButton(
                child: Text('Okay'),
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
              )
            ],
          ),
        );
      }
    } else {
      // Handle server errors
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('Error'),
          content: Text('Server error: ${response.statusCode}'),
          actions: <Widget>[
            TextButton(
              child: Text('Okay'),
              onPressed: () {
                Navigator.of(ctx).pop();
              },
            )
          ],
        ),
      );
    }
  } catch (error) {
    print('Login error: $error');
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Error'),
        content: Text('An error occurred: $error'),
        actions: <Widget>[
          TextButton(
            child: Text('Okay'),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }
}
