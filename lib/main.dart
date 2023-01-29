// ignore_for_file: camel_case_types

import 'package:advanced_layoud_app/myHomePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(const myApp());

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Advanced Layoud App',
      home: myHomePage(title: 'Advanced Layoud'),
    );
  }
}
