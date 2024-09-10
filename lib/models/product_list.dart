import 'package:flutter/material.dart';
import 'package:shopp_app/data/dummy_data.dart';
import 'package:shopp_app/models/product.dart';

class ProductList with ChangeNotifier {

  final List<Product> _items = dummyProducts;

  List<Product> get items => [..._items];

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}