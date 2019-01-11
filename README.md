## Requerimientos
Dart 2.1.0 o superior.

## Uso básico
Obtener el dígito de control de un número CLABE
```dart
import 'package:clabe-dart/clabe-dart.dart';

main() {
  compute_control_digit('03218000011835971');
}
```

Para validar si un número CLABE es válido
```dart
import 'package:clabe-dart/clabe-dart.dart';

main() {
  validate_clabe('03218000011835971');
}
```

Para obtener el banco a partir de 3 dígitos
```dart
import 'package:clabe-dart/clabe-dart.dart';

main() {
  get_bank_name('002');
}
```
