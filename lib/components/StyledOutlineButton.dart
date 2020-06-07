import 'package:flutter/material.dart';

class StyledOutlineButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;

  StyledOutlineButton({@required this.buttonText, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: OutlineButton(
        child: Text(buttonText, style: TextStyle(fontSize: 20.0)),
        onPressed: onTap,
        borderSide: BorderSide(color: Colors.white, width: 2.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }
}
