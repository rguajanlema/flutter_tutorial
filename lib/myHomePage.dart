// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class myHomePage extends StatelessWidget {
  const myHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: const Center(
        child: Text('Home Page new'),
      ),
    );
  }
}
