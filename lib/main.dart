// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:advanced_layoud_app/myHomePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(const myApp());

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced Layoud App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: myHomePage(title: 'Product layout demo home page'),
    );
  }
}
