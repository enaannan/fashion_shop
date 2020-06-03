import 'package:flutter/material.dart';
import 'package:fashion_shop/components/PriceCard.dart';
import 'package:fashion_shop/components/OtherProductsImageCard.dart';
import 'package:fashion_shop/components/BottomMenuButton.dart';

class ProductView extends StatelessWidget {
  final AssetImage productImage;
  ProductView({@required this.productImage});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
//              child: Image(image: productImage),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25.0),
                            topLeft: Radius.circular(25.0)),
                        image: DecorationImage(
                            image: productImage, fit: BoxFit.cover)),
                  ),
                )),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(30.0)),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 10.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                color: Color(0xFF595757),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0))),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Cripple Top',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23.0),
                          ),
                        ),
                        PriceCard(
                          price: '\$20',
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident ',
                        style: TextStyle(color: Color(0xFFC1C1C1)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, top: 4.0, bottom: 10.0),
                          child: Text(
                            'Other Products',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22.0),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          OtherProductsImageCard(
                            productImage: AssetImage('images/fashionshop1.jpg'),
                          ),
                          OtherProductsImageCard(
                            productImage: AssetImage('images/fashion2.jpg'),
                          ),
                          OtherProductsImageCard(
                            productImage: AssetImage('images/fashion3.jpg'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: BottomMenuButton(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
