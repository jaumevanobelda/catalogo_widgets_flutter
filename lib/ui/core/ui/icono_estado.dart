import 'package:flutter/material.dart';

enum EstadoRuta { pendiente, completada, error }

class IconoEstado extends StatelessWidget {
  const new({super.key, required this.estado, this.tamano = 32});

  final EstadoRuta estado;
  final double tamano;
  @override
  Widget build(BuildContext context) {
    switch (estado) {
      case EstadoRuta.pendiente:
        return Icon(Icons.pending, size: tamano, color: Colors.amber);
      case EstadoRuta.completada:
        return Icon(Icons.done, size: tamano, color: Colors.green);
      case EstadoRuta.error:
        return Icon(Icons.error, size: tamano, color: Colors.red);
    }
  }
}
