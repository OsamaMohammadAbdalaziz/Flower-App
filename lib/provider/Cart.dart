import 'package:flower_app/model/Item.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List SelectedProducts = [];
  int Price = 0;

  add(Item product) {
    SelectedProducts.add(product);
    Price += product.Price.round();
    notifyListeners();
  }

  delete(Item product) {
    SelectedProducts.remove(product);
    Price -= product.Price.round();
    notifyListeners();
  }
}
