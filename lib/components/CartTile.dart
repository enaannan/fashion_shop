import 'package:flutter/material.dart';
import 'package:fashion_shop/components/QuantityCounterButton.dart';

class CartTile extends StatelessWidget {
  final String productImage;
  final String productName;
  CartTile({@required this.productImage, @required this.productName});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 130.0,
            height: 130.0,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(
                image: AssetImage(productImage),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
          ),
          SizedBox(width: 15.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  productName,
                  style: TextStyle(color: Color(0xFF918F8F), fontSize: 20.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Text('\$0',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: QuantityCounterButton(
                  quantity: 0,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
