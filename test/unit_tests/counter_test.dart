// test/unit_tests/counter_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_app1/counter.dart'; // Asegúrate de importar la ruta correcta

void main() {
  group('Counter', () {
    test('initial value is 0', () {
      final counter = Counter();
      expect(counter.value, 0);
    });

    test('increment increases value by 1', () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });
  });
}
