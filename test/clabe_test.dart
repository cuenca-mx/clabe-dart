import 'package:test/test.dart';

import 'package:clabe_dart/clabe_dart.dart';

void main() {
  String VALID_CLABE;
  String INVALID_CLABE;
  String INVALID_CLABE_BANK_CODE;
  setUp(() {
    VALID_CLABE = '002000000000000008';
    INVALID_CLABE = '002000000000000007';
    INVALID_CLABE_BANK_CODE = '000000000000000000'; // Control digit es valido
  });

  test('Compute control digit', () {
    expect(computeControlDigit(VALID_CLABE.substring(0, 17)),
        equals(VALID_CLABE.substring(17)));
  });

  test('Validate clabe', () {
    expect(validateClabe(VALID_CLABE), equals(true));
    expect(validateClabe(INVALID_CLABE), equals(false));
    expect(validateClabe(INVALID_CLABE_BANK_CODE), equals(false));
  });

  test('Get bank name', () {
    expect(getBankName(VALID_CLABE), equals('Banamex'));
    expect(() => getBankName(INVALID_CLABE_BANK_CODE), throwsException);
  });
}
