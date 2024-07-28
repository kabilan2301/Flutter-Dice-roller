import 'package:flutter/material.dart';
import 'package:start/gradient_container.dart';


void main() {
  runApp( const MaterialApp(
    home: Scaffold(
      body: GradientContainer(Color.fromARGB(255, 0, 10, 194),  Color.fromARGB(255, 124, 68, 255))
    ),
  ));
}
