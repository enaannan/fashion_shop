import 'package:flutter/material.dart';

class SmallCircle extends StatefulWidget {
  final bool enabled;
  SmallCircle({this.enabled});
  @override
  _SmallCircleState createState() => _SmallCircleState();
}

class _SmallCircleState extends State<SmallCircle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        width: 7.0,
        height: 7.0,
        decoration: BoxDecoration(
          color: widget.enabled ? Colors.white : Colors.black,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
