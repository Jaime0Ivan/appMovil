import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hola Mundo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hola Mundo App'),
        ),
        body: const Center(
          child: Text(
            '¡Hola Mundo!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
