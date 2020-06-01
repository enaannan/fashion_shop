import 'package:flutter/material.dart';
import 'smallCircle.dart';

class ButtonCategory extends StatelessWidget {
  final String categoryName;
  final bool enabled;
  ButtonCategory({@required this.categoryName, this.enabled = false});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: enabled ? () {} : null,
      child: Column(
        children: <Widget>[
          Text(categoryName, style: TextStyle(fontFamily: 'Roboto')),
          SmallCircle(enabled: enabled), // toggle enabled value enable circle
        ],
      ),
    );
  }
}
