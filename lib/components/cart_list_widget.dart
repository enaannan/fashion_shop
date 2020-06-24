import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fashion_shop/components/CartTile.dart';
import 'package:fashion_shop/Models/cartData.dart';

class CartListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartData>(builder: (context, cartData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final cartProduct = cartData.cartList[index];
          return CartTile(
            productName: cartProduct.name,
            productImage: cartProduct.imagePath,
          );
        },
        itemCount: cartData.cartProductCount,
      );
    });
  }
}

//Expanded(
//flex: 1,
//child: Column(
//children: <Widget>[
//CartTile(
//productImage: AssetImage('images/fashion2.jpg'),
//productName: 'Tink Chrochet Blouse',
//),
//CartTile(
//productImage: AssetImage('images/fashion3.jpg'),
//productName: ' Nice clothes',
//),
//],
//));
