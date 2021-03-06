import 'package:flutter/material.dart';
import 'package:fashion_shop/components/BottomMenuButton.dart';
import 'package:fashion_shop/constants/constants.dart';
import 'package:provider/provider.dart';
import 'package:fashion_shop/components/CheckoutSummary.dart';
import 'package:fashion_shop/components/cart_list_widget.dart';
import 'package:fashion_shop/Models/cartData.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return Scaffold(body: SafeArea(child: CartListWidget()));
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(child: CartListWidget()),
            Divider(
              color: Color(0xFF666565),
            ),
            Expanded(
                child: Column(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 50.0),
                    child: Container(
                      width: 270.0,
                      height: 500.0,
                      decoration: BoxDecoration(
                          color: Color(0xFF2C2C2C),
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0))),
                      child: Column(
                        children: <Widget>[
                          CheckoutSummary(
                            summaryTitle: 'Total items',
                            summaryValue: '\$40',
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Total',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  '\$${Provider.of<CartData>(context).totalMinusDiscount}',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  flex: 2,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 220.0,
                    height: 50.0,
                    child: OutlineButton(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      onPressed: () {},
                      borderSide: BorderSide(
                          color: Colors.white,
                          width: 2.0,
                          style: BorderStyle.solid),
                      child: Text(
                        'Proceed to checkout',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: BottomMenuButton(),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
