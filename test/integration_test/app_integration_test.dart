// integration_test/app_integration_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_app1/main.dart'; // Asegúrate de importar la ruta correcta

void main() {
  group('App Integration Test', () {
    final FlutterDriver driver = await FlutterDriver.connect();

    test('Counter increments', () async {
      // Encuentra el botón y toca en él
      final SerializableFinder counterButton = find.byValueKey('increment_button');
      await driver.tap(counterButton);

      // Verifica que el contador se haya incrementado
      expect(await driver.getText(find.byValueKey('counter_text')), '1');
    });

    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });
  });
}
