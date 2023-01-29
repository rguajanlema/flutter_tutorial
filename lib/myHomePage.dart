// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class myHomePage extends StatelessWidget {
  const myHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Listing'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _showDialog(context);
          },
          child: Text('Hello World'),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Messaje"),
            content: Text("Hello World"),
            actions: <Widget>[
              TextButton(
                child: Text(
                  "Close",
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
