import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Unit Converter'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.amberAccent,
        ),
      ),
    ),
  );
}
