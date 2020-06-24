import 'package:flutter/material.dart';
import 'package:fashion_shop/components/StyledOutlineButton.dart';
import 'package:fashion_shop/screens/products_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fashion_shop/components/InputTextFields.dart';
import 'package:fashion_shop/utils/FieldValidator.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final auth = FirebaseAuth.instance;
  String email = 'nii@gmail.com'; //todo: remove default sign in address
  String password = '123456789';
  List<String> loginValidationResponse;
  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Column(
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
            Column(
              children: <Widget>[
                InputTextField(
                  textHint: 'email',
                  textObscure: false,
                  onChanged: (value) {
                    email = value;
                  },
                ),
                SizedBox(height: 30.0),
                InputTextField(
                  textHint: 'password',
                  textObscure: true,
                  onChanged: (value) {
                    password = value;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 41.0, bottom: 100.0, left: 25.0, right: 25.0),
                  child: StyledOutlineButton(
                    buttonText: 'Login',
                    onTap: () {
                      loginValidationResponse =
                          FieldValidator.validateLoginForm(email, password);
                      if (loginValidationResponse[0] == 'Success' &&
                          loginValidationResponse[1] == 'Success') {
                        loginUser();
                      } else if (loginValidationResponse[0] != 'Success' &&
                          loginValidationResponse[1] == 'Success') {
                        Fluttertoast.showToast(
                            msg: loginValidationResponse[0],
                            gravity: ToastGravity.CENTER,
                            backgroundColor: Colors.red,
                            textColor: Colors.white);
                      } else if (loginValidationResponse[1] != 'Success' &&
                          loginValidationResponse[0] == 'Success') {
                        Fluttertoast.showToast(
                            msg: loginValidationResponse[1],
                            gravity: ToastGravity.CENTER,
                            backgroundColor: Colors.red,
                            textColor: Colors.white);
                      } else {
                        Fluttertoast.showToast(
                            msg: loginValidationResponse[1],
                            gravity: ToastGravity.CENTER,
                            backgroundColor: Colors.red,
                            textColor: Colors.white);
                      }
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void loginUser() async {
    setState(() {
      showSpinner = true;
    });
    try {
      final user = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductsScreen()));
        print(user);
        Fluttertoast.showToast(
            msg: 'login Success',
            textColor: Colors.white,
            backgroundColor: Colors.green,
            gravity: ToastGravity.CENTER);
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: 'Unable to login',
          textColor: Colors.white,
          backgroundColor: Colors.red,
          gravity: ToastGravity.CENTER);
      print(e);
    }
    setState(() {
      showSpinner = false;
    });
  }
}
