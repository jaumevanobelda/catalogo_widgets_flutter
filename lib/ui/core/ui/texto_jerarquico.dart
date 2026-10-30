import 'package:flutter/material.dart';

enum TipoTexto { titulo, subtitulo, cuerpo }

class Textojerarquico extends StatelessWidget {
  const Textojerarquico({
    super.key,
    required this.texto,
    this.tipo = TipoTexto.cuerpo,
  });

  final String texto;
  // final bool destacada;
  final TipoTexto tipo;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style : 
      switch (tipo) {
        TipoTexto.titulo => const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        TipoTexto.subtitulo => const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        TipoTexto.cuerpo => const TextStyle(
          fontSize: 16,
        ),
      },

      // style: TextStyle(
      // ),
    );
  }
}
