import 'package:flutter/material.dart';
import 'package:flutter_example/ui/catalogo/ui/catalogo_pantalla.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rufus',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 0, 153, 255)),),
      home: const CatalogoPantalla(),
    );
  }
}
