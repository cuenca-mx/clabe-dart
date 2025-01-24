import 'banks.dart';
import 'validations.dart';

const CLABE_LENGTH = 18;
const CLABE_WEIGHTS = [3, 7, 1, 3, 7, 1, 3, 7, 1, 3, 7, 1, 3, 7, 1, 3, 7];

String computeControlDigit(String clabe) {
  /*
  Compute CLABE control digit according to
  https://es.wikipedia.org/wiki/CLABE#D.C3.ADgito_control
  */
  final clabeList = clabe.split('');
  final clabeInt = clabeList.map((i) => int.parse(i)).toList();
  var weighted = [];
  for (var i = 0; i < CLABE_LENGTH - 1; i++) {
    weighted.add(clabeInt[i] * CLABE_WEIGHTS[i] % 10);
  }
  int summed = weighted.reduce((curr, next) => curr + next) % 10;
  int controlDigit = (10 - summed) % 10;
  return controlDigit.toString();
}

bool validateClabe(String clabe) {
  /*
    Validate CLABE according to
    https://es.wikipedia.org/wiki/CLABE#D.C3.ADgito_control
  */
  return (isDigit(clabe) &&
      clabe.length == CLABE_LENGTH &&
      banks.containsKey(clabe.substring(0, 3)) &&
      clabe.substring(CLABE_LENGTH - 1) == computeControlDigit(clabe));
}

String getBankName(String clabe) {
  /*
    Regresa el nombre del banco basado en los primeros 3 digitos
    https://es.wikipedia.org/wiki/CLABE#D.C3.ADgito_control
  */
  String code = clabe.substring(0, 3);
  final bankCode = banks[code];
  if (bankCode == null) throw Exception('Ningún banco tiene código ${code}');
  final bank = bankNames[bankCode];
  if (bank == null) throw Exception('Ningún banco tiene código ${code}');

  return bank;
}
