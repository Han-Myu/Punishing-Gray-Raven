import 'package:flutter/material.dart';
import 'package:punishing_gray_raven/list.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black45,
      body: Center(
        child: Image(
          image: AssetImage('asset/punishing-gray-raven-cover.jpg'),
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(horizontal: 120.0, vertical: 200.0),
        //padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 100.0),
        //color: Colors.red,
        child: ElevatedButton(
          onPressed: () {
            runApp(list());
          },
          child: Text('Login'),
        ),
      ),
    ),
  ));
}


