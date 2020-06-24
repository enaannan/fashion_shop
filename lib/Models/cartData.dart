import 'dart:collection';
import 'package:fashion_shop/Models/products.dart';
import 'package:flutter/foundation.dart';

class CartData extends ChangeNotifier {
  List<Product> _cartList = [];

  UnmodifiableListView<Product> get cartList {
    return UnmodifiableListView(_cartList);
  }

  int get cartProductCount {
    return _cartList.length;
  }

  void addToCart(
      {String productName, String productImagePath, int productQuantity}) {
    final product = Product(
        name: productName,
        imagePath: productImagePath,
        quantity: productQuantity);
    _cartList.add(product);
    notifyListeners();
    print(_cartList);
    print(_cartList.length);
  }
}
