import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  final String price;
  PriceCard({@required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
//                      alignment: Alignment(10, 10),
      width: 80.0,
      height: 40.0,
      child: Center(
          child: Text(
        price,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      )),

      decoration: BoxDecoration(
          color: Color(0xFF424242),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    );
  }
}
