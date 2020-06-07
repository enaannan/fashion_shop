import 'package:flutter/material.dart';
import 'package:fashion_shop/screens/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
          accentColor: Color(0XFF2C2C2C)),
      home: FirstScreen(),
    );
  }
}
