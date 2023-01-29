// ignore_for_file: file_names, prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  const ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          children: <Widget>[
            Image.asset('assets/appimages/' + image),
            Expanded(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Text('name'),
                  Text('description'),
                  Text('price')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
