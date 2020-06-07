import 'package:flutter/material.dart';
import 'package:fashion_shop/components/StyledOutlineButton.dart';
import 'package:fashion_shop/screens/products_screen.dart';

import 'package:fashion_shop/components/InputTextFields.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 41.0, bottom: 41.0, left: 25.0, right: 25.0),
              child: Image(
                image: AssetImage('images/Kizita Logo.png'),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  InputTextField(
                    textHint: 'email',
                    textObscure: false,
                  ),
                  SizedBox(height: 30.0),
                  InputTextField(
                    textHint: 'password',
                    textObscure: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 41.0, bottom: 41.0, left: 25.0, right: 25.0),
                    child: StyledOutlineButton(
                      buttonText: 'Login',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductsScreen()));
                      },
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
