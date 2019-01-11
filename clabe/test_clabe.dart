import 'package:clabe-dart/clabe-dart.dart';

void main() {
  var clabe = '03218000011835971';
  print(compute_control_digit(clabe));

  print(validate_clabe(clabe));

  print(get_bank_name('002'));

}
