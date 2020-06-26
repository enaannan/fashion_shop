import 'package:flutter_test/flutter_test.dart';
import 'package:fashion_shop/Models/chrochet_data.dart';
import 'dart:collection';
import 'package:fashion_shop/Models/products.dart';

void main() {
  test("Testing for the number of chrochet products ", () {
    int count = ChrochetData().productCount;
    bool actual = false;
    if (count > 0) {
      actual = true;
    }
    expect(actual, true);
  });

  test("Testing to know if a product was added", () {
    String actual = ChrochetData().addProduct(
        newChrochetPrice: 20.0,
        newChrochetProductName: 'abc',
        newImagePath: 'asd/dad');

    expect(actual, 'success');
  });

  test("get total quantity", () {
    int quantity = ChrochetData().getQuantity();
    bool actual = false;
    if (quantity > 0) {
      actual = true;
    }
    expect(actual, true);
  });

  test("Testing to show chrochet list is not empty", () {
    UnmodifiableListView<Product> result = ChrochetData().chrochetProducts;

    bool actual = false;
    if (result != null) {
      actual = true;
    }
    expect(actual, true);
  });
}
