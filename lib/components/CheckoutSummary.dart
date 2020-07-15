import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fashion_shop/Models/cartData.dart';
import 'package:fashion_shop/constants/constants.dart';

class CheckoutSummary extends StatefulWidget {
  final String summaryTitle;
  final String summaryValue;
  final String discountValue;
  CheckoutSummary(
      {@required this.summaryTitle,
      @required this.summaryValue,
      this.discountValue = '\$ 0'});

  @override
  _CheckoutSummaryState createState() => _CheckoutSummaryState();
}

class _CheckoutSummaryState extends State<CheckoutSummary> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 30.0,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.summaryTitle,
                  style: TextStyle(color: Color(0xFF918F8F)),
                ),
                Text(
                  Provider.of<CartData>(context).totalPrice.toString(),
                  style: TextStyle(
                    color: Color(0xFF918F8F),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 30.0,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  kDiscountTitle,
                  style: TextStyle(color: Color(0xFF918F8F)),
                ),
                Text(
                  widget.discountValue,
                  style: TextStyle(
                    color: Color(0xFF918F8F),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
