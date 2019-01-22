import 'package:clabe_dart/clabe_dart.dart';

main() {
  String VALID_CLABE = '002000000000000008';
  String INVALID_CLABE = '002000000000000007';

  print(validateClabe(VALID_CLABE));
  print(validateClabe(INVALID_CLABE));
  print(getBankName(VALID_CLABE));
}
