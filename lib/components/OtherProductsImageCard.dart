import 'package:flutter/material.dart';

class OtherProductsImageCard extends StatelessWidget {
  final AssetImage productImage;
  OtherProductsImageCard({@required this.productImage});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 100.0,
        height: 100.0,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image(
            image: productImage,
            fit: BoxFit.cover,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
        ),
      ),
    );
  }
}
