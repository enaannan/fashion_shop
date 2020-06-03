import 'package:flutter/material.dart';
import 'package:fashion_shop/constants/constants.dart';
import 'package:fashion_shop/components/ButtonCategory.dart';
import 'package:fashion_shop/components/PriceCard.dart';
import 'package:fashion_shop/components/QuantityCounterButton.dart';
import 'package:fashion_shop/components/BottomMenuButton.dart';
import 'package:fashion_shop/screens/product_view.dart';

class ProductsScreen extends StatefulWidget {
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  AssetImage productImage = AssetImage('images/bag.jpeg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Image(
                      image: AssetImage('images/logo-icon.png'),
                    ),
                  ),
                  SizedBox(
                    width: 120.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 100.0, right: 10.0),
                    child: Icon(
                      Icons.search,
                      size: 40.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 25.0),
                    child: Icon(
                      Icons.shopping_cart,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ButtonCategory(categoryName: kAfricanWearCategoryName),
                ButtonCategory(categoryName: kPalazzoCategoryName),
                ButtonCategory(
                  categoryName: kCrochetCategoryName,
                  enabled: true,
                ),
              ],
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductView(productImage: productImage),
                              ),
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image(
                                image: productImage,
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0))),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 40.0,
                          top: 30.0,
                          child: PriceCard(
                            price: '\$ 20',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Tink Crochet Blouse',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  QuantityCounterButton()
                ],
              ),
            ),
            Expanded(flex: 1, child: BottomMenuButton())
          ],
        ),
      ),
    );
  }
}
