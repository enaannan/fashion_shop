import 'package:fashion_shop/utils/FieldValidator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Email Tests', () {
    test('Empty Email Test', () {
      var result = FieldValidator.validateEmail('');
      expect(result, 'Enter Email');
    });

    test('Incorrect Email Format without @ and . Test', () {
      var result = FieldValidator.validateEmail('kobby');
      expect(result, 'Enter Valid Email');
    });

    test('Incorrect Email Format with @ Test', () {
      var result = FieldValidator.validateEmail('kobby@');
      expect(result, 'Enter Valid Email');
    });

    test('Incorrect Email Format with dot Test', () {
      var result = FieldValidator.validateEmail('kobby.com');
      expect(result, 'Enter Valid Email');
    });

    test('Incorrect Email Format without start string Test', () {
      var result = FieldValidator.validateEmail('@kmail.com');
      expect(result, 'Enter Valid Email');
    });

    test('Incorrect Email Format without enc string Test', () {
      var result = FieldValidator.validateEmail('kobby@kmail.');
      expect(result, 'Enter Valid Email');
    });

    test('Incorrect Email Format without mid string Test', () {
      var result = FieldValidator.validateEmail('kobby@.com');
      expect(result, 'Enter Valid Email');
    });

    test('Null Email Test', () {
      var result = FieldValidator.validateEmail(null);
      expect(result, 'Enter Email');
    });

    test('Correct Email Format Test', () {
      var result = FieldValidator.validateEmail('kobby@shopmail.com');
      expect(result, 'Success');
    });
  });

  group(' Registration Password Tests', () {
    test('Incorrect Registration password validation with Null value Test', () {
      var result = FieldValidator.validateRegistrationPassword(null, null);
      expect(result, 'Enter a Password');
    });

    test(
        'Incorrect Registration password validation with unequal password length Test',
        () {
      var result =
          FieldValidator.validateRegistrationPassword('123456789', null);
      expect(result, 'Passwords do not match');
    });

    test('Registration password validation with equal password length Test',
        () {
      var result =
          FieldValidator.validateRegistrationPassword('123456789', '123456789');
      expect(result, 'Success');
    });

    test(
        'Incorrect Registration password validation with less than 7  password characters length Test',
        () {
      var result =
          FieldValidator.validateRegistrationPassword('123456', '123456');
      expect(result, 'Password must be more than 6 characters');
    });
  });

  group('Login password Tests', () {
    test(
        'Incorrect Login password validation with less than 7  password characters length Test',
        () {
      var result = FieldValidator.validateLoginPassword('12345');
      expect(result, 'Password must be more than 7 characters');
    });
    test('Incorrect Login password validation with null Test', () {
      var result = FieldValidator.validateLoginPassword(null);
      expect(result, 'Enter a password');
    });

    test('Incorrect Login password validation with null Test', () {
      var result = FieldValidator.validateLoginPassword(null);
      expect(result, 'Enter a password');
    });
  });
}
