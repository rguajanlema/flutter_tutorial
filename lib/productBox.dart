// ignore_for_file: file_names, prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:advanced_layoud_app/model/product.dart';
import 'package:advanced_layoud_app/ratingBox.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ProductBox extends StatelessWidget {
  const ProductBox({Key? key, required this.item}) : super(key: key);

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 140,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/appimages/' + item.image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: ScopedModel<Product>(
                  model: this.item,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        item.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(item.description),
                      Text("Price: " + item.price.toString()),
                      ScopedModelDescendant<Product>(
                          builder: (context, child, item) {
                        return RatingBox(item: item);
                      }),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
