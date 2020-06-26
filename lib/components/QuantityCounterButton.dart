import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fashion_shop/Models/chrochet_data.dart';

class QuantityCounterButton extends StatefulWidget {
  int quantity;
  QuantityCounterButton({this.quantity = 0});

  @override
  _QuantityCounterButtonState createState() => _QuantityCounterButtonState();
}

class _QuantityCounterButtonState extends State<QuantityCounterButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {
              Provider.of<ChrochetData>(context, listen: false)
                  .decreaseQuantity();
            },
            child: Container(
              height: 30.0,
              width: 30.0,
              child: Center(child: Text(' - ')),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(20.0),
                    bottomStart: Radius.circular(20.0)),
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
          Container(
            height: 30.0,
            width: 30.0,
            child: Center(
                child: Text(Provider.of<ChrochetData>(context)
                    .getQuantity()
                    .toString())),
            decoration: BoxDecoration(color: Color(0xFF424242)),
          ),
          InkWell(
              onTap: () {
                Provider.of<ChrochetData>(context, listen: false)
                    .increaseQuantity();
              },
              child: Container(
                height: 30.0,
                width: 30.0,
                child: Center(child: Text(' + ')),
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(20.0),
                        topEnd: Radius.circular(20.0)),
                    color: Color(0xFF424242)),
              ))
        ],
      ),
    );

//    );
  }
}
