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
      home: const CounterPage(), // Cambiamos a CounterPage para manejar el contador
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0; // Inicializamos el contador en 0

  void _incrementCounter() {
    setState(() {
      counter++; // Incrementamos el contador
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola Mundo App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$counter', // Mostramos el contador
              style: const TextStyle(fontSize: 48),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementCounter, // Incrementar el contador al presionar
              child: const Text('Incrementar'),
            ),
          ],
        ),
      ),
    );
  }
}
