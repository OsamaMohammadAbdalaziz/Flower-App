// ignore_for_file: prefer_const_constructors, file_names

import 'package:flower_app/pages/CheckOut.dart';
import 'package:flower_app/provider/Cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsAndPrice extends StatelessWidget {
  const ProductsAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 24,
              child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      shape: BoxShape.circle),
                  child: Text(
                    "${cartt.itemCount}",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 13, 0, 255)),
                  )),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckOut(),
                    ));
              },
              icon: Icon(Icons.add_shopping_cart),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text(
            "\$ ${cartt.price}",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
