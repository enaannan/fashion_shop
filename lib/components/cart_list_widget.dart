import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fashion_shop/components/CartTile.dart';
import 'package:fashion_shop/Models/cartData.dart';

class CartListWidget extends StatefulWidget {
  @override
  _CartListWidgetState createState() => _CartListWidgetState();
}

class _CartListWidgetState extends State<CartListWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartData>(builder: (context, cartData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final cartProduct = cartData.cartList[index];

          return Dismissible(
            key: Key(cartData.cartList[index].name),
            onDismissed: (direction) {
              var removedProduct = cartData.removeItem(index: index);

              Scaffold.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(
                    '${removedProduct.name} is removed',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
            background: Container(
              color: Colors.red,
            ),
            child: CartTile(
              productName: cartProduct.name,
              productImage: cartProduct.imagePath,
              productPrice: cartProduct.price,
            ),
          );
        },
        itemCount: cartData.cartProductCount,
      );
    });
  }
}
