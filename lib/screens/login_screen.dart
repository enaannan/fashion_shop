import 'package:flutter/material.dart';

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
                  top: 61.0, bottom: 61.0, left: 25.0, right: 25.0),
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 50.0, horizontal: 90.0),
                      child: Container(
                        height: 55,
                        child: OutlineButton(
                          child:
                              Text('Login', style: TextStyle(fontSize: 20.0)),
                          onPressed: () {
                            Navigator.pushNamed(context, 'productsSreen');
                          },
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                        ),
                      )
//            Material(
//              color: Colors.pink,
//              borderRadius: BorderRadius.all(Radius.circular(15.0)),
//              child: MaterialButton(
//                onPressed: null,
//                child: Text(
//                  'Login',
//                  style: TextStyle(fontSize: 20.0),
//                ),
//              ),
//            ),
                      )
                ],
              ))
        ],
      ),
    );
  }
}

class InputTextField extends StatelessWidget {
  final String textHint;
  final bool textObscure;
  InputTextField({this.textHint, this.textObscure});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: TextField(
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
