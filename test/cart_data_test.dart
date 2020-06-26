import 'package:fashion_shop/Models/cartData.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:collection';
import 'package:fashion_shop/Models/products.dart';

void main() {
  test('Test for an item in cart ', () {
    //should return true because there are no product in the cart
    bool result = CartData().isNotInList(productName: 'abc');
    expect(result, true);
  });

  test('Test for adding an item to the cart ', () {
    String result = CartData().addToCart(
        productName: 'asd',
        productImagePath: 'iageasd/adasd.sda',
        productQuantity: 2,
        productPrice: 20);
    expect(result, 'success');
  });

  test('Test for the toal price of an item', () {
    //should return zero because there are no items in the cart
    double result = CartData().totalPrice;

    expect(result, 0.0);
  });

  test('Calculates total price ', () {
    double actual = CartData().calculateTotalProductsPrice;
    expect(actual, 0.0);
  });

  test('count total number of products in cart', () {
    int actual = CartData().cartProductCount;
    expect(actual, 0);
  });

  test('Get list of products in cart', () {
    UnmodifiableListView<Product> actual = CartData().cartList;
    expect(actual, []);
  });
}
