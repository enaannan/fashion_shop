import 'package:flutter/material.dart';
import 'package:fashion_shop/components/InputTextFields.dart';
import 'package:fashion_shop/components/StyledOutlineButton.dart';
import 'package:fashion_shop/utils/FieldValidator.dart';

class RegistrationScreen extends StatefulWidget {
//  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email;
  String password;
  String retypedPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 61.0, bottom: 61.0, left: 25.0, right: 25.0),
              child: Image(
                image: AssetImage('images/Kizita Logo.png'),
              ),
            ),
          ),
          InputTextField(
            textObscure: false,
            textHint: 'Enter your e-mail',
            onChanged: (value) {
              email = value;
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          InputTextField(
            textObscure: true,
            textHint: 'Password',
            onChanged: (value) {
              password = value;
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          InputTextField(
            textObscure: true,
            textHint: 'Re-type Password',
            onChanged: (value) {
              retypedPassword = value;
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 41.0, bottom: 41.0, left: 25.0, right: 25.0),
            child: StyledOutlineButton(
              buttonText: 'Register',
              onTap: () {
                print(FieldValidator.validateRegistrationForm(
                    email: email,
                    password: password,
                    retypedPassword: retypedPassword));
              },
            ),
          ),
        ],
      ),
    );
  }
}
