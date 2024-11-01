import 'package:e_commers/model/product_model.dart';
import 'package:e_commers/service/database_sercvice.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;

  void fetchProducts() async {
    _products = await DatabaseService.getProducts();
    notifyListeners();
  }
}
