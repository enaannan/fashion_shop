import 'dart:collection';
import 'package:fashion_shop/Models/products.dart';
import 'package:flutter/foundation.dart';

class CartData extends ChangeNotifier {
  double _total = 0.0;
  List<Product> _cartList = [];

  UnmodifiableListView<Product> get cartList {
    return UnmodifiableListView(_cartList);
  }

  int get cartProductCount {
    return _cartList.length;
  }

  // add an item to the cart
  String addToCart(
      {String productName,
      String productImagePath,
      int productQuantity,
      double productPrice}) {
    int initialLength = cartProductCount;
    final product = Product(
        name: productName,
        imagePath: productImagePath,
        quantity: productQuantity,
        price: productPrice);
    _cartList.add(product);
    calculateTotalProductsPrice;
    notifyListeners();
    int finalLength = cartProductCount;
    if (initialLength < finalLength) {
      return 'success';
    } else
      return 'fail';
  }

  // check if product is already in cart
  bool isNotInList({String productName}) {
    for (var i = 0; i < cartList.length; i++) {
      if (cartList[i].name == productName) {
        return false;
      }
    }
    return true;
  }

  double get calculateTotalProductsPrice {
    for (var i = 0; i < cartList.length; i++) {
      _total = _total + (cartList[i].price * cartList[i].quantity);
    }
    notifyListeners();

    // for unit testing
    double total = _total;
    return total;
  }

  double get totalPrice {
    return _total;
  }
}
