// ignore_for_file: file_names, camel_case_types, prefer_const_constructors

import 'package:advanced_layoud_app/productBox.dart';
import 'package:flutter/material.dart';

import 'model/product.dart';

class myHomePage extends StatelessWidget {
  myHomePage({super.key, required this.title});

  final String title;
  final items = Product.getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Listing'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ProductBox(item: items[index]);
        },
      ),
    );
  }
}
