import 'package:flutter/material.dart';
import 'package:fashion_shop/screens/first_screen.dart';
import 'package:provider/provider.dart';
import 'package:fashion_shop/Models/chrochet_data.dart';
import 'package:fashion_shop/Models/cartData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ChrochetData()),
        ChangeNotifierProvider(
          create: (context) => CartData(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Colors.black,
            accentColor: Color(0XFF2C2C2C)),
        home: FirstScreen(),
      ),
    );
  }
}

//return ChangeNotifierProvider(
//create: (context) => ChrochetData(),
//child: MaterialApp(

//),
//);
