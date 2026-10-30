import 'package:flutter/material.dart';

class TextoResumen extends StatelessWidget {
  const TextoResumen({
    super.key,
    required this.texto,
    this.lineas = 2,
    this.centrado  = false,
  });

  final String texto;
  final int lineas;
  final bool centrado;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      maxLines: lineas,
      textAlign: centrado ? TextAlign.center: TextAlign.left
    );
  }
}
