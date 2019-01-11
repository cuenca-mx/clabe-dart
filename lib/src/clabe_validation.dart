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
      getBankName(clabe.substring(0,3)) != null &&
      clabe.substring(CLABE_LENGTH-1) == computeControlDigit(clabe));
}


String getBankName(String code) {
  /*
    Regresa el nombre del banco basado en los primeros 3 digitos
    https://es.wikipedia.org/wiki/CLABE#D.C3.ADgito_control
    :param code: Código de 3 digitos
    :return: Banco que corresponde al código, regresa None si no se encuentra
  */
  String bank;
  try {
    bank = bankCode[code];
  } catch (e) {
    return null;
  }
  return bank;
}
