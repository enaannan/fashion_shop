import 'package:fashion_shop/Models/products.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

//todo: all products read from the same quantity variable. fix it
class ChrochetData extends ChangeNotifier {
  static int _quantity = 1;

  List<Product> _chrochetProducts = [
    Product(
        price: 20,
        name: 'Tink Crochet Blouse',
        imagePath: 'images/bag.jpeg',
        quantity: _quantity),
    Product(
        price: 35,
        name: 'Cripple Top',
        imagePath: 'images/fashion2.jpg',
        quantity: _quantity),
    Product(
        price: 50,
        name: 'shirt',
        imagePath: 'images/fashion3.jpg',
        quantity: _quantity),
    Product(
        price: 20,
        name: 'Tink Crochet Blouse',
        imagePath: 'images/bag.jpeg',
        quantity: _quantity),
    Product(
        price: 30,
        name: 'Cripple Top',
        imagePath: 'images/fashion2.jpg',
        quantity: _quantity),
    Product(
        price: 0,
        name: 'shirt',
        imagePath: 'images/fashion3.jpg',
        quantity: _quantity),
  ];

  UnmodifiableListView<Product> get chrochetProducts {
    return UnmodifiableListView(_chrochetProducts);
  }

  int get productCount {
    return _chrochetProducts.length;
  }

  //adds a new product to the list
  String addProduct({newChrochetProductName, newChrochetPrice, newImagePath}) {
    int initialLength = productCount;
    final product = Product(
        price: newChrochetPrice,
        name: newChrochetProductName,
        imagePath: newImagePath);
    _chrochetProducts.add(product);
    notifyListeners();

    //for unit test
    int finalLength = productCount;

    if (finalLength > initialLength) {
      return "success";
    } else
      return "fail";
  }

  //increase quantity

  void increaseQuantity() {
    _quantity++;
    notifyListeners();
  }

  void decreaseQuantity() {
    if (_quantity > 0) {
      _quantity--;
    }
    notifyListeners();
  }

  int getQuantity() {
    return _quantity;
  }
}
