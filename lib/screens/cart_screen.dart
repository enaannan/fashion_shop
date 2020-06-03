import 'package:flutter/material.dart';
import 'package:fashion_shop/components/BottomMenuButton.dart';
import 'package:fashion_shop/components/OtherProductsImageCard.dart';
import 'package:fashion_shop/components/QuantityCounterButton.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    CartTile(
                      productImage: AssetImage('images/fashion2.jpg'),
                      productName: 'Tink Chrochet Blouse',
                    ),
                    CartTile(
                      productImage: AssetImage('images/fashion3.jpg'),
                      productName: ' Nice clothes',
                    ),
                  ],
                )),
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
                          Column(
                            children: <Widget>[
                              CheckoutSummary(
                                summaryTitle: 'Total items',
                                summaryValue: '\$40',
                              ),
                            ],
                          ),
                          Divider(),
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

//Todo: fix this widget to display the 'items     $40'
class CheckoutSummary extends StatelessWidget {
  final String summaryTitle;
  final String summaryValue;
  CheckoutSummary({@required this.summaryTitle, @required this.summaryValue});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Text(
            summaryTitle,
            style: TextStyle(color: Color(0xFF918F8F)),
          ),
          Text(
            summaryValue,
            style: TextStyle(
              color: Color(0xFF918F8F),
            ),
          ),
        ],
      ),
    );
  }
}

class CartTile extends StatelessWidget {
  final AssetImage productImage;
  final String productName;
  CartTile({@required this.productImage, @required this.productName});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: OtherProductsImageCard(
                  productImage: productImage,
                ),
              ),
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                productName,
                style: TextStyle(color: Color(0xFF918F8F), fontSize: 20.0),
              ),
              Text(
                '\$20',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              QuantityCounterButton(),
            ],
          ))
        ],
      ),
    );
  }
}
