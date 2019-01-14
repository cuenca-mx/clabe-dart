[![Build Status](https://travis-ci.com/cuenca-mx/clabe-dart.svg?branch=master)](https://travis-ci.com/cuenca-mx/clabe-dart)
[![Coverage Status](https://coveralls.io/repos/github/cuenca-mx/clabe-dart/badge.svg?branch=master)](https://coveralls.io/github/cuenca-mx/clabe-dart?branch=master)
## Requerimientos
Dart 2.1.0 o superior.

## Uso básico
Obtener el dígito de control de un número CLABE
```dart
import 'package:clabe_dart/clabe_dart.dart';

main() {
  computeControlDigit('03218000011835971');
}
```

Para validar si un número CLABE es válido
```dart
import 'package:clabe_dart/clabe_dart.dart';

main() {
  validateClabe('03218000011835971');
}
```

Para obtener el banco a partir de 3 dígitos
```dart
import 'package:clabe_dart/clabe_dart.dart';

main() {
  getBankName('002');
}
```
