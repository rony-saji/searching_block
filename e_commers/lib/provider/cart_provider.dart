import 'package:e_commers/model/cart_model.dart';
import 'package:e_commers/model/product_model.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  List<CartItem> _items = [];

  List<CartItem> get items => _items;

  // Adds a product to the cart
  void addItem(Product product) {
    CartItem? existingItem = _items.firstWhere(
      (item) => item.product.id == product.id,
      orElse: () => CartItem(product: product),
    );

    if (_items.contains(existingItem)) {
      existingItem.quantity++;
    } else {
      _items.add(CartItem(product: product, quantity: 1));
    }

    notifyListeners();
  }

  // Remove item from cart
  void removeItem(Product product) {
    _items.removeWhere((item) => item.product.id == product.id);
    notifyListeners();
  }

  // Clear all items in cart
  void clearCart() {
    _items = [];
    notifyListeners();
  }

  // Calculate total price
  double get totalPrice {
    return _items.fold(0.0, (sum, item) => sum + item.product.price * item.quantity);
  }

  // Get total number of items
  int get itemCount {
    return _items.fold(0, (count, item) => count + item.quantity);
  }
}