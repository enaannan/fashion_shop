import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final AssetImage productImage;
  ImageCard({this.productImage});
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
        ),
      ),
    );
  }
}
