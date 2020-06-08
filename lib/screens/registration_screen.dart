import 'package:flutter/material.dart';
import 'package:fashion_shop/components/InputTextFields.dart';
import 'package:fashion_shop/components/StyledOutlineButton.dart';
import 'package:fashion_shop/utils/FieldValidator.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fashion_shop/screens/products_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegistrationScreen extends StatefulWidget {
//  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email;
  String password;
  String retypedPassword;
  List result = [];
  bool showSpinner = false;

  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Column(
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
                  result = FieldValidator.validateRegistrationForm(
                      email: email,
                      password: password,
                      retypedPassword: retypedPassword);

                  //if both password and email are valid
                  if (result[0] == true && result[1] == true) {
                    setState(() {
                      showSpinner = true;
                      registerUser();
                    });
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Todo : Figure out if you can write a unit test for this function
  void registerUser() async {
    try {
      final newUser = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      if (newUser != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductsScreen()));
        Fluttertoast.showToast(
            msg: 'login Success',
            textColor: Colors.white,
            backgroundColor: Colors.green,
            gravity: ToastGravity.CENTER);
      }
      setState(() {
        showSpinner = false;
      });
    } catch (e) {
      print(e);
    }
  }
}
