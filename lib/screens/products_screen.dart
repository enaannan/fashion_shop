import 'package:flutter/material.dart';
import 'package:fashion_shop/constants/constants.dart';
import 'package:fashion_shop/components/ButtonCategory.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
            Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(
                image: AssetImage('images/bag.jpeg'),
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
