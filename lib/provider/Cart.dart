// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flower_app/model/Item.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List SelectedProducts = [];
  int price = 0;

  add(Item product) {
    SelectedProducts.add(product);
    price += product.price.round();
    notifyListeners();
  }

  delete(Item product) {
    SelectedProducts.remove(product);
    price -= product.price.round();
    notifyListeners();
  }

  get itemCount {
    return SelectedProducts.length;
  }
}
