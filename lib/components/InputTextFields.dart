import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String textHint;
  final bool textObscure;
  final Function onChanged;
  InputTextField({this.textHint, this.textObscure, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: textHint,
            filled: true,
            fillColor: Color(0xFF2C2C2C),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(width: 0, style: BorderStyle.none))),
        keyboardType: TextInputType.emailAddress,
        obscureText: textObscure,
      ),
    );
  }
}
