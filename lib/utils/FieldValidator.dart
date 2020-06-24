class FieldValidator {
  //returns  a string to be used in inflating  toast on Registration Screen
  static List<String> validateRegistrationForm(
      {String email, String password, String retypedPassword}) {
    var validationResponse = [
      validateEmail(email),
      validateRegistrationPassword(password, retypedPassword)
    ];
    return validationResponse;
  }

//returns  a string to be used in inflating  toast on Login Screen
  static List<String> validateLoginForm(String email, String password) {
    var validationResponse = [
      validateEmail(email),
      validateLoginPassword(password),
    ];
    return validationResponse;
  }

  // validates email fields
  static String validateEmail(String value) {
    if (value == null || value.isEmpty) {
      return 'Enter Email';
    }
    Pattern pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regex = new RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return 'Enter Valid Email';
    }
    return 'Success';
  }

//Validates login password
  static String validateLoginPassword(String password) {
    if (password == null) {
      return 'Enter a password';
    } else if (password.length < 7) {
      return 'Password must be more than 7 characters';
    } else
      return 'Success';
  }

  //Validates registration form passwords
  static String validateRegistrationPassword(
      String password, String retypedPassword) {
    if (password == retypedPassword) {
      if (password == null) {
        return 'Enter a Password';
      }
      if (password.length < 7) {
        return 'Password must be more than 6 characters';
      }
      return 'Success';
    } else {
      return 'Passwords do not match';
    }
  }
}
