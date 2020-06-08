import 'package:fashion_shop/utils/FieldValidator.dart';
//import 'package:test/test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test('Empty Email Test', () {
    var result = FieldValidator.validateEmail('');
    print(result);
    expect(result, false);
  });
}
