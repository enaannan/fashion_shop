import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class FieldValidator {
  static List<bool> validateRegistrationForm(
      {String email, String password, String retypedPassword}) {
    var validationResponse = [
      validateEmail(email),
      validatePassword(password, retypedPassword)
    ];
    return validationResponse;
  }

  static bool validateEmail(String value) {
    if (value == null) {
      Fluttertoast.showToast(
          msg: 'Enter email',
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white);

      return false;
    }
    Pattern pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regex = new RegExp(pattern);

    if (!regex.hasMatch(value)) {
      Fluttertoast.showToast(
          msg: 'Enter Valid Email',
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white);
      return false;
    }
    return null;
  }

  static bool validatePassword(String password, String retypedPassword) {
    if (password == retypedPassword) {
      if (password == null) {
        Fluttertoast.showToast(
            msg: 'Enter Password',
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.red,
            textColor: Colors.white);
        return false;
      }
      if (password.length < 7) {
        Fluttertoast.showToast(
            msg: 'Password must be more than 6 characters',
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.red,
            textColor: Colors.white);
        return false;
      }
      return true;
    } else {
      Fluttertoast.showToast(
          msg: 'Passwords do not match',
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white);
      return true;
    }
  }
}
