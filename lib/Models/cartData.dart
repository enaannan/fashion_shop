import 'dart:collection';
import 'package:fashion_shop/Models/products.dart';
import 'package:flutter/foundation.dart';

class CartData extends ChangeNotifier {
  double _total = 0.0;
  double _discount = 0.0;
  List<Product> _cartList = [];

  UnmodifiableListView<Product> get cartList {
    return UnmodifiableListView(_cartList);
  }

  int get cartProductCount {
    return _cartList.length;
  }

//adds an item to the cart
  String pushToCart(Product product) {
    int initialLength = cartProductCount;
    _cartList.add(product);
    calculateTotalProductsPrice;
    notifyListeners();
    int finalLength = cartProductCount;
    if (initialLength < finalLength) {
      return 'success';
    } else
      return 'fail';
  }

  //remove item from cart
  Product removeItem({int index}) {
    var product = _cartList.removeAt(index);
    calculateTotalProductsPrice;

    notifyListeners();
    return product;
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
    _total = 0;
    for (var i = 0; i < cartList.length; i++) {
      _total = _total + (cartList[i].price * cartList[i].quantity);
      print(_total);
    }
    notifyListeners();

    // for unit testing
    double total = _total;
    return total;
  }

  double get totalPrice {
    return _total;
  }

  double get totalMinusDiscount {
    return _total - _discount;
  }
}
