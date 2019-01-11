import 'package:test/test.dart';

import 'package:clabe/clabe-dart.dart';


void main() {
  String VALID_CLABE;
  String INVALID_CLABE;
  setUp(() {
    VALID_CLABE = '032180000118359719';
    INVALID_CLABE = '032180000118359711';
  });

  test('Compute control digit', () {
    expect(compute_control_digit(VALID_CLABE.substring(0,17)), equals(VALID_CLABE.substring(17)));
  });

  test('Validate clabe', () {
    expect(validate_clabe(VALID_CLABE), equals(true));
    expect(validate_clabe(INVALID_CLABE), equals(false));
  });

  test('Get bank name', () {
    expect(get_bank_name('002'), equals('BANAMEX'));
    expect(get_bank_name('989'), equals(null));
    expect(get_bank_name('99999999'), equals(null));
  });

}