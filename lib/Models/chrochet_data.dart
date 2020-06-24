import 'package:fashion_shop/Models/products.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

class ChrochetData extends ChangeNotifier {
  List<Product> _chrochetProducts = [
    Product(
        price: 0,
        name: 'Tink Crochet Blouse',
        imagePath: 'images/bag.jpeg',
        quantity: 0),
    Product(
        price: 0,
        name: 'Cripple Top',
        imagePath: 'images/fashion2.jpg',
        quantity: 0),
    Product(
        price: 0, name: 'shirt', imagePath: 'images/fashion3.jpg', quantity: 0),
    Product(
        price: 0,
        name: 'Tink Crochet Blouse',
        imagePath: 'images/bag.jpeg',
        quantity: 0),
    Product(
        price: 0,
        name: 'Cripple Top',
        imagePath: 'images/fashion2.jpg',
        quantity: 0),
    Product(
        price: 0, name: 'shirt', imagePath: 'images/fashion3.jpg', quantity: 0),
  ];

  UnmodifiableListView<Product> get chrochetProducts {
    return UnmodifiableListView(_chrochetProducts);
  }

  int get productCount {
    return _chrochetProducts.length;
  }

  //adds a new product to the list
  void addProduct(newChrochetProductName, newChrochetPrice, newImagePath) {
    final product = Product(
        price: newChrochetPrice,
        name: newChrochetProductName,
        imagePath: newImagePath);
    _chrochetProducts.add(product);
    notifyListeners();
  }
//
//  void increaseQuantity(Product chrochetProduct) {
//    chrochetProduct.increaseQuantity();
//    notifyListeners();
//  }
//
//  void decreaseQuantity(Product chrochetProduct) {
//    chrochetProduct.decreaseQuantity();
//    notifyListeners();
//  }
}
