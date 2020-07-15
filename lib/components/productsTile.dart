import 'package:flutter/material.dart';
import 'package:fashion_shop/screens/product_view.dart';
import 'package:fashion_shop/components/PriceCard.dart';
import 'package:fashion_shop/components/QuantityCounterButton.dart';
import 'package:fashion_shop/Models/products.dart';
import 'package:fashion_shop/Models/cartData.dart';
import 'package:provider/provider.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final cartData = CartData();
  ProductTile({this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                            ProductView(productImage: product.imagePath),
                      ),
                    );
                  },
                  child: Container(
                    width: 350.0,
                    height: 500.0,
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(
                        image: AssetImage(product.imagePath),
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
                    price: '\$ ${product.price.toString()}',
                  ),
                ),
              ],
            ),
          ),
          Text(
            product.name,
            style: TextStyle(fontSize: 18.0),
          ),
          Row(
            children: <Widget>[
              QuantityCounterButton(
                name: product.name,
              ),
              SizedBox(
                width: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: InkWell(
                  onTap: () {
                    //checks if the item to be added is already in the cart
                    if (Provider.of<CartData>(context, listen: false)
                        .isNotInList(productName: product.name)) {
                      Provider.of<CartData>(context, listen: false).addToCart(
                          productImagePath: product.imagePath,
                          productName: product.name,
                          productQuantity: product.quantity,
                          productPrice: product.price);

                      Fluttertoast.showToast(
                          msg: 'Item addad to cart',
                          gravity: ToastGravity.CENTER,
                          backgroundColor: Colors.green,
                          textColor: Colors.white);
                    } else {
                      Fluttertoast.showToast(
                          msg: 'Item is already in cart',
                          gravity: ToastGravity.CENTER,
                          backgroundColor: Colors.red,
                          textColor: Colors.white);
                    }
                  },
                  child: Container(
                    height: 35.0,
                    width: 35.0,
                    child: Center(
                        child: Icon(
                      Icons.add_shopping_cart,
                      size: 25.0,
                    )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(20.0),
                          bottomStart: Radius.circular(20.0),
                          bottomEnd: Radius.circular(20.0),
                          topEnd: Radius.circular(20.0)),
                      color: Color(0xFF424242),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF424242).withOpacity(0.5),
                            blurRadius: 7,
                            spreadRadius: 5.0,
                            offset: Offset(0, 3))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
