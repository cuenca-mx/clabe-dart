[![Build Status](https://travis-ci.com/cuenca-mx/clabe-dart.svg?branch=master)](https://travis-ci.com/cuenca-mx/clabe-dart)
[![codecov](https://codecov.io/gh/cuenca-mx/clabe-dart/branch/master/graph/badge.svg?token=M1WFOK5GUU)](https://codecov.io/gh/cuenca-mx/clabe-dart)
## Requerimientos
Dart 2.1.0 o superior.

## Uso básico
Obtener el dígito de control de un número CLABE
```dart
import 'package:clabe_dart/clabe_dart.dart';

main() {
  computeControlDigit('00200000000000000');
}
```

Para validar si un número CLABE es válido
```dart
import 'package:clabe_dart/clabe_dart.dart';

main() {
  validateClabe('002000000000000008');
}
```

Para obtener el banco a partir de la clabe
```dart
import 'package:clabe_dart/clabe_dart.dart';

main() {
  getBankName('002000000000000008');
}
```
