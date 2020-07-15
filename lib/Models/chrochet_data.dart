import 'package:fashion_shop/Models/products.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

//todo: all products read from the same quantity variable. fix it
class ChrochetData extends ChangeNotifier {
  List<Product> _crochetProducts = [
    Product(
        price: 20,
        name: 'Tink Crochet Blouse',
        imagePath: 'images/bag.jpeg',
        quantity: 5),
    Product(
        price: 35,
        name: 'Cripple Top',
        imagePath: 'images/fashion2.jpg',
        quantity: 5),
    Product(
        price: 50,
        name: 'shirt',
        imagePath: 'images/fashion3.jpg',
        quantity: 5),
    Product(
        price: 20,
        name: 'Tink Crochet Blouse',
        imagePath: 'images/bag.jpeg',
        quantity: 5),
    Product(
        price: 30,
        name: 'Cripple Top',
        imagePath: 'images/fashion2.jpg',
        quantity: 5),
    Product(
        price: 0, name: 'shirt', imagePath: 'images/fashion3.jpg', quantity: 5),
  ];

  UnmodifiableListView<Product> get crochetProducts {
    return UnmodifiableListView(_crochetProducts);
  }

  int get productCount {
    return _crochetProducts.length;
  }

  //adds a new product to the list
  String addProduct({newChrochetProductName, newChrochetPrice, newImagePath}) {
    int initialLength = productCount;
    final product = Product(
        price: newChrochetPrice,
        name: newChrochetProductName,
        imagePath: newImagePath);
    _crochetProducts.add(product);
    notifyListeners();

    //for unit test
    int finalLength = productCount;

    if (finalLength > initialLength) {
      return "success";
    } else
      return "fail";
  }

  //increase quantity

  void increaseQuantity(String name) {
    for (var i = 0; i < crochetProducts.length; i++) {
      if (name == crochetProducts[i].name) {
        crochetProducts[i].quantity++;
      }
    }

    notifyListeners();
  }

  void decreaseQuantity(String name) {
    for (var i = 0; i < crochetProducts.length; i++) {
      if (name == crochetProducts[i].name) {
        if (crochetProducts[i].quantity > 1) {
          crochetProducts[i].quantity--;
        }
      }
    }

    notifyListeners();
  }

  int getQuantity(String name) {
    for (var i = 0; i < crochetProducts.length; i++) {
      if (name == crochetProducts[i].name) {
        return crochetProducts[i].quantity;
      }
    }
    return null;
  }
}
