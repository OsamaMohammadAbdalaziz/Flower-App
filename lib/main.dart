

import 'package:flower_app/pages/Home.dart';
import 'package:flower_app/pages/Login.dart';
import 'package:flower_app/pages/Product_details.dart';
import 'package:flower_app/pages/register.dart';
import 'package:flower_app/provider/Cart.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) {return Cart();},
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
