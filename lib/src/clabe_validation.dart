import 'banks.dart';
const CLABE_LENGTH = 18;
const CLABE_WEIGHTS = [3, 7, 1, 3, 7, 1, 3, 7, 1, 3, 7, 1, 3, 7, 1, 3, 7];


String compute_control_digit(String clabe) {
  /*
  Compute CLABE control digit according to
  https://es.wikipedia.org/wiki/CLABE#D.C3.ADgito_control
  */
  var clabe_list = clabe.split('');
  var clabe_int = clabe_list.map((i) => int.parse(i)).toList();
  var weighted = [];
  for (var i = 0; i < CLABE_LENGTH - 1; i++) {
    weighted.add(clabe_int[i] * CLABE_WEIGHTS[i] % 10);
  }
  int summed = weighted.reduce((curr, next) => curr + next) % 10;
  int control_digit = (10 - summed) % 10;
  var a = 5;
  return control_digit.toString();
}


bool validate_clabe(String clabe) {
  /*
    Validate CLABE according to
    https://es.wikipedia.org/wiki/CLABE#D.C3.ADgito_control
  */
  return (isDigit(clabe) &&
      clabe.length == CLABE_LENGTH &&
      get_bank_name(clabe.substring(0,3)) != null &&
      clabe.substring(CLABE_LENGTH-1) == compute_control_digit(clabe));
}


String get_bank_name(String code) {
  /*
    Regresa el nombre del banco basado en los primeros 3 digitos
    https://es.wikipedia.org/wiki/CLABE#D.C3.ADgito_control
    :param code: Código de 3 digitos
    :return: Banco que corresponde al código, regresa None si no se encuentra
  */
  String bank;
  try {
    bank = BankCode[code];
  } catch (e) {
    return null;
  }
  return bank;
}

// Determine if a String is digit
bool isDigit(String s) {
  if(s == null) {
    return false;
  }
  int N = s.length;
  for (var i = 0; i < N; i++) {
    try {
      int.parse(s[i]);
    } catch (e) {
      return false;
    }
  }
  return true;
}