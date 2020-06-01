import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/products_screen.dart';

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
      home: LoginScreen(),
      initialRoute: 'Login_Screen',
      routes: {
//        '/': (context) => LoginScreen(),
        'productsSreen': (context) => ProductsScreen()
      },
    );
  }
}
