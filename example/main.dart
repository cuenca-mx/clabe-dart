import 'package:clabe_dart/clabe_dart.dart';

main() {
  String VALID_CLABE = '032180000118359719';
  String INVALID_CLABE = '032180343334594716';

  print(validateClabe(VALID_CLABE));
  print(validateClabe(INVALID_CLABE));
}
