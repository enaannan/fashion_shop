import 'package:fashion_shop/utils/FieldValidator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Empty Email Test', () {
    var result = FieldValidator.validateEmail('');
    print(result);
    expect(result, 'Enter Email');
  });

  test('Incorrect Email Format', () {
    var result = FieldValidator.validateEmail('asdasd');
    expect(result, 'Enter Valid Email');
  });
}
