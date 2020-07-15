import 'package:flutter/material.dart';
import 'package:fashion_shop/Models/chrochet_data.dart';
import 'package:provider/provider.dart';
import 'package:fashion_shop/components/productsTile.dart';

class CrochetProductListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ChrochetData>(builder: (context, chrochetData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final product = chrochetData.crochetProducts[index];
          return ProductTile(
            product: product,
          );
        },
        itemCount: chrochetData.productCount,
        scrollDirection: Axis.horizontal,
      );
    });
  }
}
