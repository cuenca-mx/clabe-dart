import 'package:test/test.dart';

import 'package:clabe_dart/clabe_dart.dart';


void main() {
  String VALID_CLABE;
  String INVALID_CLABE;
  setUp(() {
    VALID_CLABE = '032180000118359719';
    INVALID_CLABE = '032180000118359711';
  });

  test('Compute control digit', () {
    expect(computeControlDigit(VALID_CLABE.substring(0,17)), equals(VALID_CLABE.substring(17)));
  });

  test('Validate clabe', () {
    expect(validateClabe(VALID_CLABE), equals(true));
    expect(validateClabe(INVALID_CLABE), equals(false));
  });

  test('Get bank name', () {
    expect(getBankName('002'), equals('BANAMEX'));
    expect(getBankName('989'), equals(null));
    expect(getBankName('99999999'), equals(null));
  });

}