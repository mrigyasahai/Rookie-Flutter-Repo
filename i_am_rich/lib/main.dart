//Widget tree: MaterialApp Widget->Center Widget->Text Widget

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Center(
            child: Text(
              'I am Rich!',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
