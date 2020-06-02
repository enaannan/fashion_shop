import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  final String price;
  PriceCard({@required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
//                      alignment: Alignment(10, 10),
      width: 50.0,
      height: 25.0,
      child: Center(child: Text(price)),

      decoration: BoxDecoration(
          color: Color(0xFF424242),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    );
  }
}
