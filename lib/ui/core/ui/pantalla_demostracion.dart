import 'package:flutter/material.dart';

class PantallaDemostracion extends StatelessWidget {
  const new({
    super.key,
    required this.titulo,
    required this.contenido,
    this.destacada = false,
    this.centrarTitulo = false,
  });

  final String titulo;
  final Widget contenido;
  final bool destacada;
  final bool centrarTitulo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(titulo), centerTitle: centrarTitulo,foregroundColor: destacada ? Colors.amber : Colors.white),
      body: contenido,
    );
  }
}
